v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 240 -60 240 -50 {lab=GND}
N 240 -150 240 -120 {lab=Vref}
N 80 -60 80 -50 {lab=GND}
N 80 -150 80 -120 {lab=VDD}
N 160 -60 160 -50 {lab=GND}
N 160 -150 160 -120 {lab=VSS}
N 960 -110 960 -50 {
lab=GND}
N 870 -220 960 -220 {
lab=Vout}
N 960 -220 960 -170 {
lab=Vout}
N 570 -250 670 -250 {
lab=#net1}
N 670 -250 690 -250 {lab=#net1}
N 570 -190 690 -190 {lab=Vin}
N 690 -200 690 -190 {lab=Vin}
N 320 -60 320 -50 {lab=GND}
N 320 -150 320 -120 {lab=Vin}
C {devices/vsource.sym} 240 -90 0 0 {name=V1 value=\{Vref\}}
C {devices/gnd.sym} 240 -50 0 0 {name=l2 lab=GND}
C {devices/launcher.sym} 120 -370 0 0 {name=h3
descr="Save & Netlist & sim" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/lab_wire.sym} 240 -150 0 0 {name=p1 sig_type=std_logic lab=Vref}
C {devices/noconn.sym} 800 -160 0 1 {name=l4}
C {devices/lab_wire.sym} 760 -100 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 760 -120 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 80 -90 0 0 {name=V8 value=\{VDD\}}
C {devices/gnd.sym} 80 -50 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 80 -150 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 160 -90 0 0 {name=V5 value=\{VSS\}}
C {devices/gnd.sym} 160 -50 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 160 -150 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 960 -140 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 320 -90 0 0 {name=Vin value=\{Vin\}}
C {devices/lab_wire.sym} 960 -220 0 0 {name=p12 sig_type=std_logic lab=Vout}
C {devices/gnd.sym} 960 -50 0 0 {name=l8 lab=GND}
C {devices/code_shown.sym} 40 -500 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice statistical
"}
C {launcher.sym} 120 -300 0 0 {name=h1
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {devices/code_shown.sym} 540 -500 0 0 {name=Voltage_sources only_toplevel=true
value="
.param VDD = 1.8
.param VSS = 0
.param Vref = 1.2
.param Vin = 1.2
.param Vsweep = 1
"}
C {devices/lab_wire.sym} 760 -140 0 0 {name=p4 sig_type=std_logic lab=Vref}
C {devices/vsource.sym} 570 -220 2 0 {name=Vsweep value=\{Vsweep\}}
C {devices/gnd.sym} 320 -50 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 320 -150 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {devices/lab_wire.sym} 660 -190 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {simulator_commands.sym} 980 -480 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="

*.param TEMPGAUSS = agauss(40, 30, 1)
*.option temp = 'TEMPGAUSS'

.param sw_stat_global = 1
.param sw_stat_mismatch = 1

*.save all
.control
  let mc_runs = 100
  let run = 0
  set curplot=new          $ create a new plot
  set scratch=$curplot     $ store its name to 'scratch'
  setplot $scratch         $ make 'scratch' the active plot
  let v_offset=unitvec(mc_runs) $ create a vector in plot 'scratch' to store v_offset data


  dowhile run < mc_runs

    *MC statistical

    dc Vsweep -0.1 0.1 0.01 

    let vout_sw = v(Vout)
    meas dc Voffset when vout_sw=0.9 rise=1
    *plot vout_sw

    set run = $&run             $ create a variable from the vector
    set dt = $curplot           $ store the current plot to dt
    setplot $scratch            $ make 'scratch' the active plot

    let v_offset[run]=\{$dt\}.voffset       $ store voffset to vector v_offset in plot 'scratch'

    setplot $dt                 $ go back to the previous plot

    let run = run + 1
    reset
  end    $ loop ends here

  echo
  *print \{$scratch\}.v_offset

* Compute statistics

let mean_val_offset = avg(\{$scratch\}.v_offset)          ; Store mean in scalar variable
let mean_offset = mean_val_offset[mc_runs-1]
let diff_offset = \{$scratch\}.v_offset - mean_val_offset
let diff_sq_offset = diff_offset * diff_offset
let variance_offset = avg(diff_sq_offset)
let stddev_val_offset = sqrt(variance_offset)  ; Store stddev in scalar variable
let stddev_offset = stddev_val_offset[mc_runs-1]

* Print statistics
echo
echo '----------------------------------------'
echo 'Monte Carlo Results (n = $&mc_runs)'
echo '----------------------------------------'
echo 'Mean Voffset: $&mean_offset V'
echo 'Std Dev Voffset: $&stddev_offset V'
echo '----------------------------------------'

.endc
"}
C {/foss/designs/workarea/error_amplifier_v2/error_amplifier_N_input/xschem/error_amplifier_N_input.sym} 780 -220 0 0 {name=x1}
