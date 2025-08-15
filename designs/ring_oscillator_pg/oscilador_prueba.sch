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
N 330 -880 330 -850 {lab=GND}
N 330 -990 330 -940 {lab=Vstar_stop}
N 955 -355 1005 -355 {lab=GND}
N 955 -405 1005 -405 {lab=VP}
N 955 -380 1005 -380 {lab=VCONTROL}
N 955 -455 1005 -455 {lab=VDD}
N 1340 -535 1390 -535 {lab=OUT}
N 1340 -655 1390 -655 {lab=OUT2}
N 1340 -595 1390 -595 {lab=IN}
N 220 -640 220 -585 {lab=VP}
N 220 -650 220 -640 {lab=VP}
N 220 -660 220 -650 {lab=VP}
N 220 -670 220 -660 {lab=VP}
N 220 -675 220 -670 {lab=VP}
N 955 -430 1005 -430 {lab=Vstar_stop}
N 1450 -655 1475 -655 {lab=GND}
N 1450 -595 1475 -595 {lab=GND}
N 1450 -535 1475 -535 {lab=GND}
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
C {gnd.sym} 330 -850 0 0 {name=l11 lab=GND}
C {vsource.sym} 330 -910 0 0 {name=V3 value=\{v_start_stop\} savecurrent=false}
C {lab_wire.sym} 330 -990 0 0 {name=p19 sig_type=std_logic lab=Vstar_stop}
C {gnd.sym} 1005 -355 0 1 {name=l3 lab=GND}
C {lab_wire.sym} 1005 -430 0 1 {name=p1 sig_type=std_logic lab=Vstar_stop}
C {lab_wire.sym} 1005 -455 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1005 -380 0 1 {name=p3 sig_type=std_logic lab=VCONTROL}
C {lab_wire.sym} 1005 -405 0 1 {name=p5 sig_type=std_logic lab=VP}
C {lab_wire.sym} 1350 -535 0 1 {name=p11 sig_type=std_logic lab=OUT}
C {lab_wire.sym} 1350 -655 0 1 {name=p18 sig_type=std_logic lab=OUT2}
C {lab_wire.sym} 1350 -595 0 1 {name=p6 sig_type=std_logic lab=IN}
C {devices/code_shown.sym} 230 -310 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice ss

"}
C {code.sym} 350 -730 0 0 {name=barridos only_toplevel=TRUE 
value="
.TRAN 0.01n 1u
.param vcontrol=1
.param w=1u
.param wp=3.5u
.param cap=15f
.save v(out)
.param v_start_stop=0
.control

*----------------------------- Parámetros generales
let VP = 1.8
let per50 = VP * 0.5

*----------------------------- Parámetros para barrido de vcontrol (w = 100u)
let vstart = 0
let vend   = vp
let vstep  = 0.083
let npoints = (vend - vstart)/vstep+1 
let vpp = vector(npoints)
let v = vstart
let idx = 0

*----------------------------- Crear vectores para vcontrol
let vcontrol_vec = vector(npoints)
let freq_vec     = vector(npoints)
settype voltage   vcontrol_vec
settype frequency freq_vec
alterparam w = 1u

*----------------------------- Parámetros para barrido de w (vcontrol = 0.8)
let wstart = 0.22u
let wend   = 10u
let wstep  = 0.035u
let wpoints = (wend - wstart)/wstep + 1
let w = wstart
let j = 0

*----------------------------- Crear vectores para w
let w_vec     = vector(wpoints)
let freqw_vec = vector(wpoints)
settype dimension  w_vec
settype frequency  freqw_vec

*==========================================================
*--------------------- BARRIDO vcontrol -------------------
*==========================================================
while v le vend
  alterparam vcontrol = $&v
  reset
  tran 0.01n 1u
  meas TRAN T_period TRIG v(out) VAL=per50 rise=2 TARG v(out) VAL=per50 rise=3
  let F_recu = 1 / T_period
  let vcontrol_vec[idx] = v
  let freq_vec[idx]     = F_recu
  let vpp[idx]=$v(vp)
  let v = v + vstep
  let idx = idx + 1
end

*==========================================================
*--------------------- BARRIDO w --------------------------
*==========================================================
alterparam vcontrol = 0.8
*while w le wend 
 *alterparam w = $&w
 * reset
  *tran 0.01n 0.1u
 * meas TRAN T_period TRIG v(out) VAL=per50 rise=2 TARG v(out) VAL=per50 rise=3
 * let F_recu = 1 / T_period
  *let w_vec[j]     = w
  *let freqw_vec[j] = F_recu
  *let w = w + wstep
 *let j = j + 1
end

*==========================================================
*---------------------- PLOTS -----------------------------
*==========================================================
plot freq_vec   vs vcontrol_vec 
*plot freqw_vec  vs w_vec       

print vcontrol_vec freq_vec vpp
*print w_vec freqw_vec

.endc
"}
C {code.sym} 340 -540 0 0 {name=prueba_enable only_toplevel=false 
value="
.control
.param vcontrol=0.8
.param w=1u
.param wp=3.5u
.param cap=15f
.param v_start_stop=0

save all
save @m.xm5.m0[id]
save @m.xm6.m0[id]

* Pulso con 50ns en bajo y 50ns en alto, repitiéndose cada 100ns
alter @v3[PULSE]=(0 1.8 0 1n 1n 0.25u 0.5u)
TRAN 0.01n 1u

let VP=1.8
let per10 = Vp*0.1
let per50 = Vp*0.5
let per90 = Vp*0.9

meas TRAN t_rise  TRIG v(out) VAL=per10 rise=2  TARG v(out) VAL=per90 rise=2
meas TRAN t_fall  TRIG v(out) VAL=per90 fall=2  TARG v(out) VAL=per10 fall=2
meas TRAN t_delay  TRIG v(in) VAL=per50 rise=1 TARG v(out) VAL=per50 fall=1
meas TRAN T_period TRIG v(out) VAL=per50 rise=2 TARG v(out) VAL=per50 rise=3
let F_recu=1/T_period

echo '==============TRAN measurements========='

print t_delay
print t_rise
print t_fall
print T_period
print F_recu
print T_period/2

plot v(out) v(in) v(out2) 
plot v(vstar_stop)
write ocilador_segunda_prueba.raw
.endc
"}
C {capa.sym} 1420 -655 3 0 {name=C1
m=1
value=\{cap\}
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1475 -655 3 1 {name=l5 lab=GND}
C {gnd.sym} 1475 -595 3 1 {name=l6 lab=GND}
C {gnd.sym} 1475 -535 3 1 {name=l7 lab=GND}
C {capa.sym} 1420 -595 3 0 {name=C2
m=1
value=\{cap\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1420 -535 3 0 {name=C3
m=1
value=\{cap\}
footprint=1206
device="ceramic capacitor"}
C {gf180/ring_oscillator_pg/oscilador_completo.sym} 810 -395 0 0 {name=x1}
