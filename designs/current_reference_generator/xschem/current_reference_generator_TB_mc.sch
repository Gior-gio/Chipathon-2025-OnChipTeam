v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 1170 -440 {}
N 1450 -270 1490 -270 {lab=VDD}
N 1450 -230 1490 -230 {lab=VSS}
N 1140 -190 1140 -150 {lab=VSS}
N 1140 -260 1140 -250 {lab=Vout}
N 1020 -440 1080 -440 {lab=#net1}
N 1020 -440 1020 -410 {lab=#net1}
N 950 -410 1020 -410 {lab=#net1}
N 1060 -470 1080 -470 {lab=Vrefp}
N 1170 -320 1170 -270 {lab=VSS}
N 1140 -320 1140 -260 {lab=Vout}
N 1060 -540 1060 -470 {lab=Vrefp}
N 1140 -560 1140 -520 {lab=VDD}
N 1320 -390 1530 -390 {lab=#net2}
N 1320 -410 1570 -410 {lab=#net3}
N 1320 -430 1610 -430 {lab=#net4}
N 1320 -450 1650 -450 {lab=#net5}
N 800 -450 840 -450 {
lab=Vout}
N 660 -500 840 -500 {
lab=Vin}
N 1320 -370 1360 -370 {lab=#net6}
N 1020 -470 1060 -470 {lab=Vrefp}
N 280 -90 280 -80 {lab=GND}
N 280 -180 280 -150 {lab=Vin}
N 130 -90 130 -80 {lab=GND}
N 130 -180 130 -150 {lab=VDD}
N 210 -90 210 -80 {lab=GND}
N 210 -180 210 -150 {lab=VSS}
N 350 -90 350 -80 {lab=GND}
N 350 -180 350 -150 {lab=Vref}
N 800 -260 1140 -260 {lab=Vout}
N 800 -450 800 -260 {lab=Vout}
N 1650 -320 1650 -300 {lab=#net5}
N 1610 -320 1610 -300 {lab=#net4}
N 1570 -320 1570 -300 {lab=#net3}
N 1530 -320 1530 -300 {lab=#net2}
N 1530 -390 1530 -380 {lab=#net2}
N 1570 -410 1570 -380 {lab=#net3}
N 1610 -430 1610 -380 {lab=#net4}
N 1650 -450 1650 -380 {lab=#net5}
N 1570 -380 1570 -320 {lab=#net3}
N 1610 -380 1610 -320 {lab=#net4}
N 1650 -380 1650 -320 {lab=#net5}
N 1530 -380 1530 -320 {lab=#net2}
C {res.sym} 1140 -220 0 0 {name=R1
value=600k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 1140 -150 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1450 -270 2 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1450 -230 2 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 910 -390 2 1 {name=p7 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 910 -370 2 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 910 -350 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 660 -500 2 1 {name=p10 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 1170 -270 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1060 -540 0 1 {name=p17 sig_type=std_logic lab=Vrefp}
C {lab_pin.sym} 1140 -560 0 1 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1140 -290 2 1 {name=p1 sig_type=std_logic lab=Vout}
C {noconn.sym} 1360 -370 2 0 {name=l8}
C {gf180/current_reference_second_stage/xschem/current_reference_second_stage.sym} 1190 -410 0 0 {name=x2}
C {gf180/current_reference_load/xschem/current_reference_load.sym} 1590 -250 0 0 {name=x3}
C {gf180/error_amplifier_N_input/xschem/error_amplifier_N_input.sym} 930 -470 0 0 {name=x1}
C {devices/code_shown.sym} 100 -810 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice statistical
"}
C {devices/vsource.sym} 280 -120 0 0 {name=V6 value="DC = \{Vin\}, AC = 1"}
C {devices/gnd.sym} 280 -80 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 280 -180 0 0 {name=p14 sig_type=std_logic lab=Vin}
C {devices/vsource.sym} 130 -120 0 0 {name=V8 value=\{VDD\}}
C {devices/gnd.sym} 130 -80 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 130 -180 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 210 -120 0 0 {name=V9 value=\{VSS\}}
C {devices/gnd.sym} 210 -80 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 210 -180 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/launcher.sym} 160 -420 0 0 {name=h1
descr="Save & Netlist & sim" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {launcher.sym} 160 -340 0 0 {name=h2
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {devices/vsource.sym} 350 -120 0 0 {name=V1 value=\{Vref\}}
C {devices/gnd.sym} 350 -80 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 350 -180 0 0 {name=p2 sig_type=std_logic lab=Vref}
C {devices/code_shown.sym} 110 -620 0 0 {name=Voltage_sources only_toplevel=true
value="
.param VDD = 1.8
.param VSS = 0
.param Vref = 1.2
.param Vin = 1.2
"}
C {simulator_commands.sym} 410 -640 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="

*.param TEMPGAUSS = agauss(40, 30, 1)
*.option temp = 'TEMPGAUSS'

.save @m.x3.xm1.m0[id]
.save @m.x3.xm2.m0[id]
.save @m.x3.xm3.m0[id]
.save @m.x3.xm4.m0[id]
.param sw_stat_global = 1
.param sw_stat_mismatch = 1
.option filetype=ascii
*.save all
.control
  let mc_runs = 1000
  let run = 0
  set curplot=new          $ create a new plot
  set scratch=$curplot     $ store its name to 'scratch'
  setplot $scratch         $ make 'scratch' the active plot
  let current_n1=unitvec(mc_runs) $ create a vector in plot 'scratch' to store current_n1 data
  let current_n50=unitvec(mc_runs) $ create a vector in plot 'scratch' to store current_n50 data
  let current_p1=unitvec(mc_runs) $ create a vector in plot 'scratch' to store current_p1 data
  let current_p50=unitvec(mc_runs) $ create a vector in plot 'scratch' to store current_p50 data

  dowhile run < mc_runs

    *MC statistical

    op

    let id_n1 = @m.x3.xm1.m0[id]
    let id_n50 = @m.x3.xm2.m0[id]
    let id_p1 = @m.x3.xm3.m0[id]
    let id_p50 = @m.x3.xm4.m0[id]

    print id_n1 id_n50 id_p1 id_p50

    set run = $&run             $ create a variable from the vector
    set dt = $curplot           $ store the current plot to dt
    setplot $scratch            $ make 'scratch' the active plot

    let current_n1[run]=\{$dt\}.id_n1       $ store In to vector Current in plot 'scratch'
    let current_n50[run]=\{$dt\}.id_n50       $ store In to vector Current in plot 'scratch'
    let current_p1[run]=\{$dt\}.id_p1       $ store In to vector Current in plot 'scratch'
    let current_p50[run]=\{$dt\}.id_p50       $ store In to vector Current in plot 'scratch'

    setplot $dt                 $ go back to the previous plot

    let run = run + 1
    reset
  end    $ loop ends here

  echo
  *print \{$scratch\}.current_n1 
  *print \{$scratch\}.current_n50 
  *print \{$scratch\}.current_p1 
  *print \{$scratch\}.current_p50

* Compute statistics

let mean_val_n1 = avg(\{$scratch\}.current_n1)          ; Store mean in scalar variable
let mean_n1 = mean_val_n1[mc_runs-1]
let diff_n1 = \{$scratch\}.current_n1 - mean_val_n1
let diff_sq_n1 = diff_n1 * diff_n1
let variance_n1 = avg(diff_sq_n1)
let stddev_val_n1 = sqrt(variance_n1)  ; Store stddev in scalar variable
let stddev_n1 = stddev_val_n1[mc_runs-1]

let mean_val_n50 = avg(\{$scratch\}.current_n50)          ; Store mean in scalar variable
let mean_n50 = mean_val_n50[mc_runs-1]
let diff_n50 = \{$scratch\}.current_n50 - mean_val_n50
let diff_sq_n50 = diff_n50 * diff_n50
let variance_n50 = avg(diff_sq_n50)
let stddev_val_n50 = sqrt(variance_n50)  ; Store stddev in scalar variable
let stddev_n50 = stddev_val_n50[mc_runs-1]

let mean_val_p1 = avg(\{$scratch\}.current_p1)          ; Store mean in scalar variable
let mean_p1 = mean_val_p1[mc_runs-1]
let diff_p1 = \{$scratch\}.current_p1 - mean_val_p1
let diff_sq_p1 = diff_p1 * diff_p1
let variance_p1 = avg(diff_sq_p1)
let stddev_val_p1 = sqrt(variance_p1)  ; Store stddev in scalar variable
let stddev_p1 = stddev_val_p1[mc_runs-1]

let mean_val_p50 = avg(\{$scratch\}.current_p50)          ; Store mean in scalar variable
let mean_p50 = mean_val_p50[mc_runs-1]
let diff_p50 = \{$scratch\}.current_p50 - mean_val_p50
let diff_sq_p50 = diff_p50 * diff_p50
let variance_p50 = avg(diff_sq_p50)
let stddev_val_p50 = sqrt(variance_p50)  ; Store stddev in scalar variable
let stddev_p50 = stddev_val_p50[mc_runs-1]

write mc_data.raw \{$scratch\}.current_n1 \{$scratch\}.current_n50 \{$scratch\}.current_p1 \{$scratch\}.current_p50

* Print statistics
echo
echo '----------------------------------------'
echo 'Monte Carlo Results (n = $&mc_runs)'
echo '----------------------------------------'
echo 'Mean Id_n1: $&mean_n1 A'
echo 'Std Dev Id_n1: $&stddev_n1 A'
echo '----------------------------------------'
echo 'Mean Id_n50: $&mean_n50 A'
echo 'Std Dev Id_n50: $&stddev_n50 A'
echo '----------------------------------------'
echo 'Mean Id_p1: $&mean_p1 A'
echo 'Std Dev Id_p1: $&stddev_p1 A'
echo '----------------------------------------'
echo 'Mean Id_p50: $&mean_p50 A'
echo 'Std Dev Id_p50: $&stddev_p50 A'
echo '----------------------------------------'


.endc
"}
