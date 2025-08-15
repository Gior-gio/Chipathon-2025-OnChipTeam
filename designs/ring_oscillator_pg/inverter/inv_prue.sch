v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 70 -350 70 -310 {lab=GND}
N 210 -350 210 -310 {lab=GND}
N 420 -270 420 -240 {lab=GND}
N 420 -610 420 -550 {lab=#net1}
N 420 -310 420 -270 {lab=GND}
N 420 -550 420 -530 {lab=#net1}
N 560 -410 590 -410 {lab=out}
N 590 -410 600 -410 {lab=out}
N 600 -410 610 -410 {lab=out}
N 420 -530 420 -520 {lab=#net1}
N 70 -610 420 -610 {lab=#net1}
N 70 -610 70 -450 {lab=#net1}
N 70 -450 70 -410 {lab=#net1}
N 240 -410 290 -410 {lab=in}
N 210 -410 240 -410 {lab=in}
N 610 -410 610 -390 {lab=out}
N 610 -330 610 -300 {lab=GND}
C {vsource.sym} 70 -380 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 210 -380 0 0 {name=VIN value=1.8  savecurrent=false}
C {gnd.sym} 70 -310 0 0 {name=l1 lab=GND}
C {gnd.sym} 210 -310 0 0 {name=l2 lab=GND}
C {gnd.sym} 420 -240 0 0 {name=l3 lab=GND}
C {noconn.sym} 610 -410 2 0 {name=l4}
C {lab_wire.sym} 260 -410 0 0 {name=p3 sig_type=std_logic lab=in}
C {lab_wire.sym} 590 -410 0 0 {name=p4 sig_type=std_logic lab=out}
C {devices/code_shown.sym} 680 -260 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 160 -70 0 0 {name=l5 author="Nicolas velasco "}
C {capa.sym} 610 -360 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 610 -300 0 0 {name=l6 lab=GND}
C {code.sym} 800 -610 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all

** Define input signal
let fsig = 1k
let tper = 1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper-2*tfr

** Define transient params
let tstop = 2*tper
let tstep = 0.001*tper

print tper tstop tstep

** Set Sources 
alter @VIN[DC] = 0.0
alter @VIN[PULSE] = [ 0 1.8 0 $&tfr $&tfr $&ton  $&tper 0 ]

** Simulations
op
dc vin 0 1.8 0.01
tran $&tstep $&tstop

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
print T_period/2


** Plots
setplot dc1
let vout = v(out)
plot vout

setplot tran1
let vout = v(out)
let vin = v(in)
let ivdd = -v1#branch*1e
plot vout vin ivdd

setplot op1

write inv_tb.raw
.endc
"}
C {gf180/ring_oscillator_pg/inverter/inv.sym} 270 -240 0 0 {name=xnot2}
