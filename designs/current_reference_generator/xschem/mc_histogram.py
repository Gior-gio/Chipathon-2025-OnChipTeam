#!/usr/bin/env python3
"""
mc_histograms_headless_fixed_eng2.py

- Saves exactly four histograms with forced names (n1, n50, p1, p50).
- Plot title is the filename WITHOUT the .png extension.
- X-axis uses engineering notation (EngFormatter).
- Mean (μ) and std dev (σ) printed on the plot are formatted using engineering notation with SI prefixes
  (e.g. "2.49 μ" for micro-scale numbers).

Usage examples:
    python mc_histograms_headless_fixed_eng2.py
    python mc_histograms_headless_fixed_eng2.py /headless/.xschem/simulations/mc_data.raw --outdir ./plots --bins 50
"""
import re
import os
import glob
import math
import sys
import argparse
from statistics import mean, pstdev
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.ticker import EngFormatter

FLOAT_RE = r'[-+]?(?:\d*\.\d+|\d+\.\d*|\d+)(?:[eE][-+]?\d+)?'

# SI prefixes mapping for engineering notation (exponent -> prefix)
SI_PREFIXES = {
    -24: 'y',  # yocto
    -21: 'z',  # zepto
    -18: 'a',  # atto
    -15: 'f',  # femto
    -12: 'p',  # pico
    -9:  'n',  # nano
    -6:  'μ',  # micro (mu)
    -3:  'm',  # milli
     0:  '',   # 
     3:  'k',  # kilo
     6:  'M',  # mega
     9:  'G',  # giga
    12:  'T',  # tera
    15:  'P',  # peta
    18:  'E',  # exa
    21:  'Z',  # zetta
    24:  'Y',  # yotta
}

def eng_format_value(val, sig_digits=3):
    """Return a string with engineering notation using SI prefixes, e.g. 0.0001246 -> '124.6 μ'.
    Uses sig_digits significant digits for the mantissa.
    """
    if val == 0 or val is None or (isinstance(val, float) and math.isnan(val)):
        return "0"
    sign = '-' if val < 0 else ''
    a = abs(val)
    # exponent in multiples of 3
    exp = int(math.floor(math.log10(a) / 3.0) * 3) if a > 0 else 0
    # clamp exponent to available prefixes
    if exp < min(SI_PREFIXES.keys()):
        exp = min(SI_PREFIXES.keys())
    if exp > max(SI_PREFIXES.keys()):
        exp = max(SI_PREFIXES.keys())
    scaled = a / (10.0 ** exp)
    # format scaled with sig_digits significant digits
    # use general format with precision = sig_digits
    mant = f"{scaled:.{sig_digits}g}"
    prefix = SI_PREFIXES.get(exp, '')
    # include a thin space between mantissa and prefix for readability
    if prefix:
        return f"{sign}{mant}\u2009{prefix}"
    else:
        return f"{sign}{mant}"

def find_latest_mc_file(directory='/headless/.xschem/simulations', pattern='mc*.raw'):
    g = glob.glob(os.path.join(directory, pattern))
    if not g:
        return None
    g_sorted = sorted(g, key=os.path.getmtime, reverse=True)
    return g_sorted[0]

def parse_raw(path):
    with open(path, 'r', encoding='utf-8', errors='ignore') as f:
        text = f.read()

    # Number of variables and points if present
    nvars = None
    npoints = None
    m = re.search(r'No\. Variables:\s*(\d+)', text)
    if m:
        nvars = int(m.group(1))
    m = re.search(r'No\. Points:\s*(\d+)', text)
    if m:
        npoints = int(m.group(1))

    # Variables section (optional)
    vars_section = []
    m_vars = re.search(r'Variables:\s*(.*?)\nValues:', text, re.S)
    if m_vars:
        vars_block = m_vars.group(1)
        for line in vars_block.splitlines():
            line = line.strip()
            if not line:
                continue
            parts = re.split(r'\s+', line, maxsplit=2)
            if len(parts) >= 2:
                vars_section.append(parts[1])

    # Values section
    m_vals = re.search(r'Values:\s*(.*)$', text, re.S)
    if not m_vals:
        raise ValueError("Could not find 'Values:' section in the .raw file")
    vals_text = m_vals.group(1)

    # Clean leading row indices (like ' 0\t' or '1 ')
    vals_lines = []
    for raw_line in vals_text.splitlines():
        if raw_line.strip() == '':
            vals_lines.append('')
            continue
        cleaned = re.sub(r'^\s*\d+\s+', '', raw_line)
        vals_lines.append(cleaned)
    cleaned_text = '\n'.join(vals_lines)

    nums = re.findall(FLOAT_RE, cleaned_text)
    floats = [float(x) for x in nums]

    if nvars is None and vars_section:
        nvars = len(vars_section)
    if nvars is None:
        # try infer small divisors
        L = len(floats)
        for cand in range(2, 40):
            if L % cand == 0:
                nvars = cand
                break
    if nvars is None:
        raise ValueError("Unable to determine number of variables (No. Variables).")

    if npoints is None:
        if len(floats) % nvars == 0:
            npoints = len(floats) // nvars
        else:
            npoints = len(floats) // nvars  # best effort

    expected = npoints * nvars
    if expected != len(floats):
        floats = floats[:expected]

    matrix = [floats[i*nvars:(i+1)*nvars] for i in range(npoints)]
    cols = [[matrix[i][j] for i in range(npoints)] for j in range(nvars)]
    if len(vars_section) >= nvars:
        names = vars_section[:nvars]
    else:
        names = [f'col{j}' for j in range(nvars)]

    return {'nvars': nvars, 'npoints': npoints, 'names': names, 'cols': cols}

def save_fixed_four(parsed, file_id, outdir='plots', bins=40, skip_first_dup=True):
    os.makedirs(outdir, exist_ok=True)
    nvars = parsed['nvars']
    names = parsed['names']
    cols = parsed['cols']

    # by convention skip first duplicate column if requested
    start_idx = 1 if skip_first_dup and nvars > 1 else 0

    # We'll only save 4 histograms, mapped in this exact order:
    forced_suffixes = ['n1', 'n50', 'p1', 'p50']

    # prepare the list of column indices to use (first four available after start_idx)
    col_indices = list(range(start_idx, min(start_idx + 4, nvars)))
    if len(col_indices) == 0:
        print("No columns found to plot.", file=sys.stderr)
        return

    # If there are fewer than 4 columns, warn and use available suffixes
    if len(col_indices) < 4:
        print(f"Warning: only {len(col_indices)} columns available; will save that many histograms.", file=sys.stderr)

    for k, col_idx in enumerate(col_indices):
        data = [v for v in cols[col_idx] if not math.isnan(v)]
        if len(data) == 0:
            print(f"No numeric data for column {col_idx} ({names[col_idx]}), skipping.", file=sys.stderr)
            continue
        mu = mean(data)
        sigma = pstdev(data)  # population std dev
        # assign forced suffix (even if variable name suggests otherwise)
        suffix = forced_suffixes[k] if k < len(forced_suffixes) else f'col{col_idx}'
        fname = f"histogram_{file_id}_{suffix}.png"
        outpath = os.path.join(outdir, fname)

        fig, ax = plt.subplots(figsize=(6,4))
        ax.hist(data, bins=bins)
        # set title to the filename WITHOUT the .png extension
        title_no_ext = os.path.splitext(os.path.basename(outpath))[0]
        ax.set_title(title_no_ext)
        ax.set_xlabel('Value')
        ax.set_ylabel('Frequency')
        # Use EngFormatter for engineering notation on x-axis (SI prefixes)
        eng = EngFormatter(unit='')  # no unit text appended
        ax.xaxis.set_major_formatter(eng)
        # annotate mean and std using engineering formatted strings
        mu_str = eng_format_value(mu, sig_digits=4)
        sigma_str = eng_format_value(sigma, sig_digits=3)
        txt = f"μ = {mu_str}\nσ = {sigma_str}\nN = {len(data)}"
        ax.text(0.98, 0.95, txt, ha='right', va='top', transform=ax.transAxes, bbox=dict(facecolor='white', alpha=0.85, edgecolor='none'))
        plt.tight_layout()
        plt.savefig(outpath)
        plt.close(fig)
        print(f"Saved: {outpath}  (μ={mu_str}, σ={sigma_str}, N={len(data)})")

def main():
    parser = argparse.ArgumentParser(description="Save exactly four histograms with forced names and engineering-format annotations")
    parser.add_argument('file', nargs='?', default=None, help="Path to .raw file (if not given, the script will search /headless/.xschem/simulations for the latest mc*.raw)")
    parser.add_argument('--outdir', default='plots', help='Directory to save histograms (default: ./plots)')
    parser.add_argument('--bins', type=int, default=40, help='Number of bins for histogram (default: 40)')
    parser.add_argument('--no-skip-first', action='store_true', help='Do not skip the first variable (default is to skip)')
    args = parser.parse_args()

    filepath = args.file
    if filepath is None:
        filepath = find_latest_mc_file()
        if filepath is None:
            print("No mc*.raw file found under /headless/.xschem/simulations. Exiting.", file=sys.stderr)
            sys.exit(2)
    if not os.path.isfile(filepath):
        print(f"File not found: {filepath}", file=sys.stderr)
        sys.exit(2)

    file_id = os.path.splitext(os.path.basename(filepath))[0]
    parsed = parse_raw(filepath)
    save_fixed_four(parsed, file_id=file_id, outdir=args.outdir, bins=args.bins, skip_first_dup=not args.no_skip_first)

if __name__ == '__main__':
    main()
