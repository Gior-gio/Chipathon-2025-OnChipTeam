v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 540 -220 620 -220 {lab=IN}
N 680 -370 680 -310 {lab=VDD}
N 680 -130 680 -70 {lab=VSS}
N 100 -180 100 -170 {lab=GND}
N 100 -270 100 -240 {lab=#net1}
N 180 -180 180 -170 {lab=GND}
N 180 -270 180 -240 {lab=#net2}
N 260 -270 260 -240 {lab=#net3}
N 260 -180 260 -170 {lab=GND}
N 740 -220 920 -220 {lab=OUT}
N 1060 -220 1160 -220 {lab=Y}
N 980 -350 980 -290 {lab=VDD}
N 980 -150 980 -90 {lab=VSS}
N 260 -350 260 -330 {lab=IN}
N 100 -350 100 -330 {lab=VDD}
N 180 -350 180 -330 {lab=VSS}
C {edge_detector/xschem/edge_detector_TOP.sym} 680 -220 0 0 {name=xED}
C {simulator_commands.sym} 1030 -460 0 0 {name=TESTBENCH
simulator="ngspice"
only_toplevel="false" 
value="
.save v(IN) v(OUT) v(Y)

.control
    tran 0.25n 3u

    * Measure rising edge time (when OUT crosses threshold upwards)
    meas tran t_rise when v(OUT)=0.9 rise=1

    * Measure falling edge time (when OUT crosses threshold downwards)
    meas tran t_fall when v(OUT)=0.9 fall=1

    * Calculate pulse width as time difference
    let pulse_width=t_fall-t_rise

    * Print measured values
    print pulse_width

    * Plot Output
    plot v(OUT)

    * Save waveform data
    write edge_detector_TB.raw
.endc
"}
C {devices/code_shown.sym} 50 -470 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/launcher.sym} 110 -390 0 0 {name=h1
descr="Save & Netlist & sim" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/code_shown.sym} 640 -460 0 0 {name=Voltage_sources only_toplevel=true
value="
.param VDD = 1.8
.param VSS = 0
"}
C {devices/vsource.sym} 260 -210 0 0 {name=VIN value="pwl 0 0 1.9u 0 2u \{VDD\}"}
C {devices/vsource.sym} 100 -210 0 0 {name=VSP value=\{VDD\}}
C {devices/gnd.sym} 100 -170 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 100 -350 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 180 -210 0 0 {name=VSN value=\{VSS\}}
C {devices/gnd.sym} 180 -170 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 180 -350 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 260 -350 0 0 {name=p1 sig_type=std_logic lab=IN}
C {devices/gnd.sym} 260 -170 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 540 -220 0 0 {name=p2 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 810 -220 0 1 {name=p3 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 680 -330 3 1 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 680 -110 1 1 {name=p5 sig_type=std_logic lab=VSS}
C {noconn.sym} 1160 -220 2 0 {name=l9}
C {devices/lab_wire.sym} 1120 -220 0 1 {name=p8 sig_type=std_logic lab=Y}
C {devices/lab_wire.sym} 980 -310 3 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 980 -130 1 1 {name=p7 sig_type=std_logic lab=VSS}
C {res.sym} 260 -300 2 0 {name=R3
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 180 -300 2 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 100 -300 2 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {gate_inv_x1/gate_inv_x1.sym} 980 -220 0 0 {name=xLOAD}
