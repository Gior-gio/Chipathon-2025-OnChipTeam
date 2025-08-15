v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 550 -100 550 -90 {lab=GND}
N 550 -190 550 -160 {lab=Vref}
N 230 -170 230 -160 {lab=GND}
N 230 -260 230 -230 {lab=VDD}
N 310 -170 310 -160 {lab=GND}
N 310 -260 310 -230 {lab=VSS}
N 940 -100 940 -40 {
lab=GND}
N 850 -210 940 -210 {
lab=Vout}
N 940 -210 940 -160 {
lab=Vout}
N 550 -240 650 -240 {
lab=Vn}
N 550 -310 550 -240 {
lab=Vn}
N 940 -310 940 -210 {
lab=Vout}
N 570 -190 670 -190 {
lab=Vref}
N 650 -240 670 -240 {lab=Vn}
N 550 -310 630 -310 {lab=Vn}
N 690 -310 780 -310 {lab=Vx}
N 840 -310 940 -310 {lab=Vout}
N 550 -190 570 -190 {lab=Vref}
C {devices/vsource.sym} 550 -130 0 0 {name=V1 value=CACE\{Vref\}}
C {devices/gnd.sym} 550 -90 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 550 -190 0 0 {name=p1 sig_type=std_logic lab=Vref}
C {devices/noconn.sym} 780 -150 0 1 {name=l4}
C {devices/lab_wire.sym} 740 -90 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 740 -110 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 230 -200 0 0 {name=V8 value=CACE\{VDD\}}
C {devices/gnd.sym} 230 -160 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 230 -260 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 310 -200 0 0 {name=V5 value=0}
C {devices/gnd.sym} 310 -160 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 310 -260 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 940 -130 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 940 -210 0 0 {name=p12 sig_type=std_logic lab=Vout}
C {devices/gnd.sym} 940 -40 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 740 -130 0 0 {name=p4 sig_type=std_logic lab=Vref}
C {devices/vsource.sym} 810 -310 1 0 {name=Vsweep value=CACE\{Vsweep\}}
C {devices/vsource.sym} 660 -310 3 1 {name=V3 value=CACE\{Vref\}}
C {devices/code_shown.sym} 110 -630 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false
value="
.lib CACE\{PDK_ROOT\}/CACE\{PDK\}/libs.tech/ngspice/sm141064.ngspice CACE\{corner\}

.include CACE\{PDK_ROOT\}/CACE\{PDK\}/libs.tech/ngspice/design.ngspice
.include CACE\{DUT_path\}

.temp CACE\{temperature\}

.option SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]

* Flag unsafe operating conditions (exceeds models' specified limits)
.option warn=1
"}
C {code.sym} 890 -500 0 0 {name=OS only_toplevel=true value="


.control
save all
 
** OP simulation
op
** Output swing
dc Vsweep 0 CACE\{VDD\} 0.01 

setplot dc1
let dvout = deriv(v(Vout))

meas dc limmin when dvout=0.99 rise=1
meas dc limmax when dvout=0.99 fall=1

let Output_swing = limmax - limmin

*print Output_swing
*plot dvout

print Output_swing
echo $&Output_swing > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data


.endc
"}
C {devices/lab_wire.sym} 550 -310 0 0 {name=p2 sig_type=std_logic lab=Vn
}
C {devices/lab_wire.sym} 740 -310 0 0 {name=p3 sig_type=std_logic lab=Vx
}
C {xschem/error_amplifier_N_input.sym} 760 -210 0 0 {name=x1}
