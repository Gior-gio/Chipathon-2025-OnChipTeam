v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 860 -1200 860 -1020 {}
L 4 860 -1020 1240 -1020 {}
L 4 1240 -1200 1240 -1020 {}
L 4 860 -1200 1240 -1200 {}
T {EXTERNAL RESISTORS} 930 -1240 0 0 0.4 0.4 {}
N 880 -850 940 -850 {lab=RST}
N 880 -870 940 -870 {lab=Vx}
N 880 -830 940 -830 {lab=Vref}
N 1040 -960 1040 -930 {lab=VDD}
N 1150 -850 1230 -850 {lab=OUT}
N 140 -880 140 -860 {lab=GND}
N 220 -880 220 -860 {lab=GND}
N 220 -980 220 -940 {lab=#net1}
N 140 -980 140 -940 {lab=#net2}
N 380 -880 380 -860 {lab=GND}
N 380 -980 380 -940 {lab=#net3}
N 600 -870 600 -850 {lab=GND}
N 300 -880 300 -860 {lab=GND}
N 300 -980 300 -940 {lab=#net4}
N 600 -970 600 -930 {lab=#net5}
N 1040 -780 1040 -750 {lab=VSS}
N 900 -1120 960 -1120 {lab=Vctr}
N 1020 -1120 1080 -1120 {lab=Vx}
N 1140 -1120 1200 -1120 {lab=OUT}
N 600 -1060 600 -1030 {lab=Vctr}
N 140 -1060 140 -1040 {lab=VDD}
N 220 -1060 220 -1040 {lab=VSS}
N 300 -1060 300 -1040 {lab=Vref}
N 380 -1060 380 -1040 {lab=RST}
C {devices/code_shown.sym} 110 -605 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical

"}
C {code.sym} 172.5 -777.5 0 0 {name=CODE only_toplevel=false 
value="

.param VDD = 1.8
.param VSS = 0
.param vctr = 1
.param vref = 1.3
.param cap = 15f

.param wxor=5.6u

.save all

.control

*----------------------------- Parámetros generales
let Vhigh = 1.8
let Vmid = Vhigh * 0.5

tran 0.1n 1u
meas tran IDD_AVG AVG i(VSP) from=20n to=1u
let PAVG = abs(IDD_AVG*Vhigh)
print PAVG

meas TRAN T_period TRIG v(B) VAL=Vmid rise=2 TARG v(B) VAL=Vmid rise=3
let F_ring = 1 / T_period
print F_ring

plot v(Vctr) v(Vref)
plot v(OUT) v(Vx)
plot v(RST)

.endc
"}
C {lab_wire.sym} 890 -850 0 1 {name=p7 sig_type=std_logic lab=RST}
C {lab_wire.sym} 890 -870 0 1 {name=p11 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 890 -830 0 1 {name=p13 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 1040 -960 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1180 -850 0 1 {name=p6 sig_type=std_logic lab=OUT}
C {devices/vsource.sym} 380 -910 0 0 {name=VRESET value="pwl 0 \{VDD\} 10n \{VDD\} 20n 0"}
C {lab_wire.sym} 380 -1060 0 1 {name=p12 sig_type=std_logic lab=RST}
C {gnd.sym} 380 -860 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 140 -910 0 0 {name=VSP value=\{VDD\}}
C {devices/gnd.sym} 140 -860 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 140 -1060 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 220 -910 0 0 {name=VSN value=\{VSS\}}
C {devices/gnd.sym} 220 -860 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 220 -1060 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 600 -850 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 600 -1060 0 0 {name=p8 sig_type=std_logic lab=Vctr}
C {devices/vsource.sym} 300 -910 0 0 {name=VR value=\{vref\}}
C {devices/gnd.sym} 300 -860 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 300 -1060 0 0 {name=p10 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 1040 -750 2 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 600 -900 0 0 {name=VC value="pwl 0 \{vref\} 215n \{vref\} 225n \{vctr\}"}
C {res_ac.sym} 990 -1120 3 0 {name=RIN
value=100k
ac=1k
m=1}
C {res_ac.sym} 1110 -1120 3 0 {name=RFB
value=100k
ac=1k
m=1}
C {lab_wire.sym} 910 -1120 0 1 {name=p22 sig_type=std_logic lab=Vctr}
C {lab_wire.sym} 1030 -1120 0 1 {name=p23 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 1160 -1120 0 1 {name=p24 sig_type=std_logic lab=OUT}
C {res.sym} 600 -1000 2 0 {name=R3
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 380 -1010 2 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 300 -1010 2 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 220 -1010 2 0 {name=R4
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 140 -1010 2 0 {name=R5
value=50
footprint=1206
device=resistor
m=1}
C {gf180/integrator/xschem/integrator.sym} 1050 -830 0 0 {name=x1}
