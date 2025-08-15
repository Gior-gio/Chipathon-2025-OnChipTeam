v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1000 -1130 1000 -1100 {lab=VDD}
N 1000 -630 1000 -600 {lab=VDD}
N 700 -980 760 -980 {lab=RST}
N 700 -860 760 -860 {lab=Vctr}
N 700 -480 760 -480 {lab=RST}
N 700 -360 760 -360 {lab=Vref}
N 1120 -420 1200 -420 {lab=B,PREF[3:0]}
N 1120 -920 1200 -920 {lab=A,PCTR[3:0]}
N 1530 -790 1530 -760 {lab=VDD}
N 1630 -680 1710 -680 {lab=OUT}
N 140 -880 140 -860 {lab=GND}
N 220 -880 220 -860 {lab=GND}
N 220 -980 220 -940 {lab=#net1}
N 140 -980 140 -940 {lab=#net2}
N 380 -880 380 -860 {lab=GND}
N 380 -980 380 -940 {lab=#net3}
N 380 -1160 380 -1140 {lab=GND}
N 300 -880 300 -860 {lab=GND}
N 300 -980 300 -940 {lab=#net4}
N 380 -1260 380 -1220 {lab=#net5}
N 1000 -740 1000 -710 {lab=VSS}
N 1000 -240 1000 -210 {lab=VSS}
N 1530 -600 1530 -570 {lab=VSS}
N 1250 -700 1430 -700 {lab=A,PCTR[3:0]}
N 1250 -670 1430 -670 {lab=B,PREF[3:0]}
N 380 -1360 380 -1320 {lab=Vctr}
N 380 -1060 380 -1040 {lab=RST}
N 300 -1060 300 -1040 {lab=Vref}
N 220 -1060 220 -1040 {lab=VSS}
N 140 -1060 140 -1040 {lab=VDD}
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
.param vctr = 1.8
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
plot v(OUT)
plot v(RST)

.endc
"}
C {integrator_RO5St/xschem/integrator_RO5St.sym} 940 -920 0 0 {name=xROCTR}
C {integrator_RO5St/xschem/integrator_RO5St.sym} 940 -420 0 0 {name=xROREF}
C {lab_wire.sym} 1000 -1130 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1000 -630 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 710 -980 0 1 {name=p7 sig_type=std_logic lab=RST}
C {lab_wire.sym} 710 -480 0 1 {name=p9 sig_type=std_logic lab=RST}
C {lab_wire.sym} 710 -860 0 1 {name=p11 sig_type=std_logic lab=Vctr}
C {lab_wire.sym} 710 -360 0 1 {name=p13 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 1130 -420 0 1 {name=p15 sig_type=std_logic lab=B,PREF[3:0]}
C {lab_wire.sym} 1130 -920 0 1 {name=p16 sig_type=std_logic lab=A,PCTR[3:0]}
C {integrator_phasedetector/xschem/integrator_phasedetector.sym} 1530 -680 0 0 {name=xMPD}
C {lab_wire.sym} 1530 -790 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1660 -680 0 1 {name=p6 sig_type=std_logic lab=OUT}
C {devices/vsource.sym} 380 -910 0 0 {name=VRESET value="pwl 0 \{VDD\} 10n \{VDD\} 20n 0"}
C {lab_wire.sym} 380 -1060 0 1 {name=p12 sig_type=std_logic lab=RST}
C {gnd.sym} 380 -860 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 140 -910 0 0 {name=VSP value=\{VDD\}}
C {devices/gnd.sym} 140 -860 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 140 -1060 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 220 -910 0 0 {name=VSN value=\{VSS\}}
C {devices/gnd.sym} 220 -860 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 220 -1060 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 380 -1140 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 380 -1360 0 0 {name=p8 sig_type=std_logic lab=Vctr}
C {devices/vsource.sym} 300 -910 0 0 {name=VR value=\{vref\}}
C {devices/gnd.sym} 300 -860 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 300 -1060 0 0 {name=p10 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 1000 -710 2 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1000 -210 2 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1530 -570 2 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1300 -700 0 1 {name=p1 sig_type=std_logic lab=A,PCTR[3:0]}
C {devices/vsource.sym} 380 -1190 0 0 {name=VC value="pwl 0 \{vref\} 215n \{vref\} 225n \{vctr\}"}
C {lab_wire.sym} 1300 -670 0 1 {name=p2 sig_type=std_logic lab=B,PREF[3:0]}
C {res.sym} 380 -1290 2 0 {name=R3
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
