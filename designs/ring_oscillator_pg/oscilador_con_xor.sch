v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 220 -500 220 -460 {lab=GND}
N 220 -790 220 -735 {lab=VDD}
N 180 -705 180 -660 {lab=VP}
N 180 -660 220 -660 {lab=VP}
N 120 -530 180 -530 {lab=VCONTROL}
N 220 -585 220 -560 {lab=VP}
N 220 -530 250 -530 {lab=GND}
N 250 -530 250 -485 {lab=GND}
N 220 -485 250 -485 {lab=GND}
N 220 -705 260 -705 {lab=VDD}
N 260 -745 260 -705 {lab=VDD}
N 220 -745 260 -745 {lab=VDD}
N 220 -460 220 -430 {lab=GND}
N 120 -885 120 -855 {lab=GND}
N 220 -885 220 -855 {lab=GND}
N 120 -985 120 -945 {lab=VDD}
N 220 -985 220 -945 {lab=VCONTROL}
N 120 -660 180 -660 {lab=VP}
N 425 -885 425 -855 {lab=GND}
N 425 -995 425 -945 {lab=Vstar_stop}
N 1115 -805 1165 -805 {lab=GND}
N 1115 -855 1165 -855 {lab=VP}
N 1115 -830 1165 -830 {lab=VCONTROL}
N 1115 -905 1165 -905 {lab=VDD}
N 1500 -985 1550 -985 {lab=OUT}
N 1500 -1105 1550 -1105 {lab=OUT2}
N 1500 -1045 1550 -1045 {lab=IN}
N 220 -640 220 -585 {lab=VP}
N 220 -650 220 -640 {lab=VP}
N 220 -660 220 -650 {lab=VP}
N 220 -670 220 -660 {lab=VP}
N 220 -675 220 -670 {lab=VP}
N 1115 -880 1165 -880 {lab=Vstar_stop}
N 1590 -1020 1640 -1020 {lab=OUT2}
N 1590 -1105 1590 -1020 {lab=OUT2}
N 1550 -1105 1590 -1105 {lab=OUT2}
N 1840 -1000 1870 -1000 {lab=out_pwm}
N 1730 -930 1730 -915 {lab=GND}
N 1620 -980 1640 -980 {lab=VCONTROL2}
N 1730 -1100 1730 -1070 {lab=VDD}
N 325 -890 325 -860 {lab=GND}
N 325 -990 325 -950 {lab=VCONTROL2}
N 1620 -980 1620 -955 {lab=VCONTROL2}
N 1590 -950 1620 -950 {lab=VCONTROL2}
N 1620 -955 1620 -950 {lab=VCONTROL2}
N 1930 -1000 1980 -1000 {lab=out_pwm}
N 1955 -1020 1955 -1000 {lab=out_pwm}
N 1870 -1000 1930 -1000 {lab=out_pwm}
C {symbols/pfet_03v3.sym} 200 -705 0 0 {name=M5
L=0.28u
W=1u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 200 -530 0 0 {name=M6
L=0.28u
W=1u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 120 -530 0 0 {name=p7 sig_type=std_logic lab=VCONTROL}
C {lab_wire.sym} 220 -790 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {gnd.sym} 120 -855 0 0 {name=l1 lab=GND}
C {vsource.sym} 120 -915 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 220 -855 0 0 {name=l2 lab=GND}
C {vsource.sym} 220 -915 0 0 {name=V2 value=\{VCONTROL\} savecurrent=false}
C {lab_wire.sym} 220 -985 0 0 {name=p8 sig_type=std_logic lab=VCONTROL}
C {lab_wire.sym} 120 -985 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {gnd.sym} 220 -430 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 120 -660 0 0 {name=p4 sig_type=std_logic lab=VP}
C {gnd.sym} 425 -855 0 0 {name=l11 lab=GND}
C {vsource.sym} 425 -915 0 0 {name=V3 value=\{v_start_stop\} savecurrent=false}
C {lab_wire.sym} 425 -995 0 0 {name=p19 sig_type=std_logic lab=Vstar_stop}
C {gnd.sym} 1165 -805 0 1 {name=l3 lab=GND}
C {lab_wire.sym} 1165 -880 0 1 {name=p1 sig_type=std_logic lab=Vstar_stop}
C {lab_wire.sym} 1165 -905 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1165 -830 0 1 {name=p3 sig_type=std_logic lab=VCONTROL}
C {lab_wire.sym} 1165 -855 0 1 {name=p5 sig_type=std_logic lab=VP}
C {lab_wire.sym} 1510 -985 0 1 {name=p11 sig_type=std_logic lab=OUT}
C {lab_wire.sym} 1510 -1105 0 1 {name=p18 sig_type=std_logic lab=OUT2}
C {noconn.sym} 1550 -985 0 1 {name=l7}
C {noconn.sym} 1550 -1045 0 1 {name=l6}
C {lab_wire.sym} 1510 -1045 0 1 {name=p6 sig_type=std_logic lab=IN}
C {devices/code_shown.sym} 40 -265 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical

"}
C {noconn.sym} 1980 -1000 0 1 {name=l5}
C {gnd.sym} 1730 -915 0 1 {name=l8 lab=GND}
C {lab_wire.sym} 1730 -1100 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1955 -1020 0 1 {name=p13 sig_type=std_logic lab=out_pwm}
C {code.sym} 347.5 -742.5 0 0 {name=s1 only_toplevel=false 
value="

.param vcontrol=1
.param vcontrol2=1.3
.param w=1u
.param wxor=1u
.param cap=15f
.save all

.param v_start_stop=0
.control

*----------------------------- Parámetros generales
let VP = 1.8
let per50 = VP * 0.5
tran 0.01n 60n
meas TRAN T_period TRIG v(out) VAL=per50 rise=2 TARG v(out) VAL=per50 rise=3
let F_recu = 1 / T_period
meas TRAN T_period TRIG v(out) VAL=per50 rise=2 TARG v(out) VAL=per50 rise=3
print F_recu

plot v(out_pwm) v(vcontrol2) v(out2)











.endc
"}
C {gnd.sym} 325 -860 0 0 {name=l9 lab=GND}
C {vsource.sym} 325 -920 0 0 {name=V4 value=\{VCONTROL2\} savecurrent=false}
C {lab_wire.sym} 325 -990 0 0 {name=p20 sig_type=std_logic lab=VCONTROL2}
C {lab_wire.sym} 1595 -950 0 0 {name=p14 sig_type=std_logic lab=VCONTROL2}
C {oscilador_completo.sym} 975 -845 0 0 {name=x2}
C {xor.sym} 1500 -740 0 0 {name=xor}
