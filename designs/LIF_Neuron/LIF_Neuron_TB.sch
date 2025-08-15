v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 620 -1360 620 -1180 {}
L 4 620 -1180 1000 -1180 {}
L 4 1000 -1360 1000 -1180 {}
L 4 620 -1360 1000 -1360 {}
T {EXTERNAL RESISTORS} 690 -1400 0 0 0.4 0.4 {}
N 790 -1030 790 -1000 {lab=VDD}
N 80 -880 80 -860 {lab=GND}
N 160 -880 160 -860 {lab=GND}
N 160 -980 160 -940 {lab=#net1}
N 80 -980 80 -940 {lab=#net2}
N 320 -880 320 -860 {lab=GND}
N 320 -980 320 -940 {lab=#net3}
N 330 -1180 330 -1160 {lab=GND}
N 240 -880 240 -860 {lab=GND}
N 240 -980 240 -940 {lab=#net4}
N 330 -1280 330 -1240 {lab=#net5}
N 1070 -1030 1070 -1000 {lab=VDD}
N 1090 -890 1090 -860 {lab=VSS}
N 970 -960 1010 -960 {lab=Vth}
N 970 -1020 970 -960 {lab=Vth}
N 80 -1170 80 -1150 {lab=GND}
N 80 -1270 80 -1230 {lab=#net6}
N 1100 -1030 1100 -1000 {lab=IBIAS}
N 200 -1180 200 -1140 {lab=IBIAS}
N 200 -1280 200 -1240 {lab=VDD}
N 320 -1000 320 -980 {lab=#net3}
N 240 -1000 240 -980 {lab=#net4}
N 160 -1000 160 -980 {lab=#net1}
N 80 -1000 80 -980 {lab=#net2}
N 80 -1290 80 -1270 {lab=#net6}
N 330 -1300 330 -1280 {lab=#net5}
N 80 -1080 80 -1060 {lab=VDD}
N 160 -1080 160 -1060 {lab=VSS}
N 240 -1080 240 -1060 {lab=Vref}
N 320 -1080 320 -1060 {lab=RST}
N 80 -1390 80 -1350 {lab=Vth}
N 200 -1320 200 -1280 {lab=VDD}
N 330 -1400 330 -1360 {lab=Vctr}
N 1220 -880 1300 -880 {lab=RST}
N 1410 -1020 1410 -990 {lab=VDD}
N 1410 -830 1410 -800 {lab=VSS}
N 1510 -940 1590 -940 {lab=SPIKE}
N 1510 -880 1590 -880 {lab=INT_RST}
N 790 -850 790 -820 {lab=VSS}
N 630 -900 690 -900 {lab=Vref}
N 630 -940 690 -940 {lab=Vx}
N 1180 -940 1300 -940 {lab=COMP}
N 900 -920 1010 -920 {lab=MEM}
N 660 -1280 720 -1280 {lab=Vctr}
N 780 -1280 840 -1280 {lab=Vx}
N 900 -1280 960 -1280 {lab=MEM}
N 630 -920 690 -920 {lab=INT_RST}
N 1650 -940 1700 -940 {lab=VSS}
C {devices/code_shown.sym} 1180 -1305 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical

"}
C {code.sym} 1022.5 -1317.5 0 0 {name=CODE only_toplevel=false 
value="

.param VDD = 1.8
.param VSS = 0
.param vctr = 1.8
.param vref = 1.44
.param vthcomp = 1.2
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

meas TRAN T_spk TRIG v(SPIKE) VAL=Vmid rise=2 TARG v(SPIKE) VAL=Vmid rise=3
let F_spk = 1 / T_spk
print F_spk

plot v(Vctr) v(Vref)
plot v(MEM) v(Vx)
plot v(COMP)
plot v(RST) v(INT_RST)
plot v(SPIKE)

.endc
"}
C {lab_wire.sym} 790 -1030 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 320 -910 0 0 {name=VRESET value="pwl 0 \{VDD\} 10n \{VDD\} 20n 0"}
C {lab_wire.sym} 320 -1080 0 1 {name=p12 sig_type=std_logic lab=RST}
C {gnd.sym} 320 -860 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 80 -910 0 0 {name=VSP value=\{VDD\}}
C {devices/gnd.sym} 80 -860 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 80 -1080 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 160 -910 0 0 {name=VSN value=\{VSS\}}
C {devices/gnd.sym} 160 -860 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 160 -1080 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 330 -1160 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 330 -1400 0 0 {name=p8 sig_type=std_logic lab=Vctr}
C {devices/vsource.sym} 240 -910 0 0 {name=VR value=\{vref\}}
C {devices/gnd.sym} 240 -860 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 240 -1080 0 0 {name=p10 sig_type=std_logic lab=Vref}
C {devices/vsource.sym} 330 -1210 0 0 {name=VC value="pwl 0 \{vref\} 215n \{vref\} 225n \{vctr\}"}
C {static_comparator/xschem/static_comparator.sym} 790 -890 0 0 {name=xCOMP}
C {lab_wire.sym} 1070 -1030 2 1 {name=p25 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1090 -860 2 0 {name=p26 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 970 -1020 0 1 {name=p27 sig_type=std_logic lab=Vth}
C {devices/vsource.sym} 80 -1200 0 0 {name=VTH1 value=\{vthcomp\}}
C {devices/gnd.sym} 80 -1150 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 80 -1390 0 0 {name=p28 sig_type=std_logic lab=Vth}
C {lab_wire.sym} 1100 -1030 2 0 {name=p30 sig_type=std_logic lab=IBIAS}
C {isource.sym} 200 -1210 0 0 {name=I0 value=1u}
C {lab_wire.sym} 200 -1140 1 0 {name=p31 sig_type=std_logic lab=IBIAS}
C {lab_wire.sym} 200 -1320 2 0 {name=p32 sig_type=std_logic lab=VDD}
C {res.sym} 330 -1330 2 0 {name=R3
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 80 -1320 2 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 320 -1030 2 0 {name=R4
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 240 -1030 2 0 {name=R5
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 160 -1030 2 0 {name=R6
value=0
footprint=1206
device=resistor
m=1}
C {res.sym} 80 -1030 2 0 {name=R7
value=0
footprint=1206
device=resistor
m=1}
C {spike_generator/spike_generator.sym} 1410 -910 0 0 {name=x1}
C {lab_wire.sym} 1240 -940 0 1 {name=p36 sig_type=std_logic lab=COMP}
C {lab_wire.sym} 1280 -880 0 0 {name=p37 sig_type=std_logic lab=RST}
C {lab_wire.sym} 1410 -1020 3 1 {name=p38 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1410 -800 3 0 {name=p46 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1530 -940 0 1 {name=p47 sig_type=std_logic lab=SPIKE}
C {lab_wire.sym} 1580 -880 0 0 {name=p48 sig_type=std_logic lab=INT_RST}
C {integrator/xschem/integrator.sym} 800 -900 0 0 {name=x2}
C {lab_wire.sym} 790 -820 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 640 -900 0 1 {name=p33 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 650 -940 0 1 {name=p34 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 630 -920 0 1 {name=p39 sig_type=std_logic lab=INT_RST}
C {lab_wire.sym} 950 -920 0 1 {name=p1 sig_type=std_logic lab=MEM}
C {res_ac.sym} 750 -1280 3 0 {name=RIN1
value=100k
ac=1k
m=1}
C {res_ac.sym} 870 -1280 3 0 {name=RFB1
value=100k
ac=1k
m=1}
C {lab_wire.sym} 670 -1280 0 1 {name=p2 sig_type=std_logic lab=Vctr}
C {lab_wire.sym} 790 -1280 0 1 {name=p3 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 920 -1280 0 1 {name=p4 sig_type=std_logic lab=MEM}
C {capa.sym} 1620 -940 3 0 {name=C1
m=1
value=\{cap\}
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1700 -940 2 0 {name=p6 sig_type=std_logic lab=VSS}
