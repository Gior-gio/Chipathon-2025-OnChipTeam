v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -270 -270 -220 -270 {lab=out2}
N -270 -60 -220 -60 {lab=out2}
N -90 -200 -50 -200 {lab=VDD}
N -90 -160 -50 -160 {lab=VCONTROL}
N -90 -180 -50 -180 {lab=VP}
N 80 -320 80 -270 {lab=in}
N 30 -270 120 -270 {lab=in}
N 20 -270 30 -270 {lab=in}
N -270 -270 -270 -60 {lab=out2}
N 250 -200 290 -200 {lab=VDD}
N 250 -160 290 -160 {lab=VCONTROL}
N 250 -180 290 -180 {lab=VP}
N 420 -320 420 -270 {lab=out}
N 370 -270 460 -270 {lab=out}
N 360 -270 370 -270 {lab=out}
N 590 -200 630 -200 {lab=VDD}
N 590 -160 630 -160 {lab=VCONTROL}
N 590 -180 630 -180 {lab=VP}
N 710 -270 800 -270 {lab=out2}
N 700 -270 710 -270 {lab=out2}
N -220 -60 800 -60 {lab=out2}
N 800 -280 800 -60 {lab=out2}
N 800 -320 800 -280 {lab=out2}
N 80 -370 80 -320 {lab=in}
N 420 -360 420 -320 {lab=out}
N 420 -380 420 -360 {lab=out}
N 80 -380 80 -370 {lab=in}
N 800 -400 800 -320 {lab=out2}
N -50 -200 -10 -200 {lab=VDD}
N -50 -180 -10 -180 {lab=VP}
N -50 -160 -10 -160 {lab=VCONTROL}
N -90 -140 -10 -140 {lab=VSS}
N 250 -140 290 -140 {lab=VSS}
N 590 -140 630 -140 {lab=VSS}
N -40 -370 -40 -340 {lab=VSS}
N -40 -400 -40 -370 {lab=VSS}
N -130 -400 -80 -400 {lab=vreset}
N -40 -430 30 -430 {lab=in}
N 30 -430 30 -270 {lab=in}
C {lab_wire.sym} -50 -200 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -50 -160 0 1 {name=p5 sig_type=std_logic lab=VCONTROL}
C {lab_wire.sym} -50 -180 0 1 {name=p13 sig_type=std_logic lab=VP}
C {lab_wire.sym} 290 -200 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 290 -160 0 1 {name=p3 sig_type=std_logic lab=VCONTROL}
C {lab_wire.sym} 290 -180 0 1 {name=p6 sig_type=std_logic lab=VP}
C {lab_wire.sym} 630 -200 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 630 -160 0 1 {name=p15 sig_type=std_logic lab=VCONTROL}
C {lab_wire.sym} 630 -180 0 1 {name=p17 sig_type=std_logic lab=VP}
C {iopin.sym} 80 -380 3 0 {name=p4 lab=in}
C {iopin.sym} 420 -380 3 0 {name=p7 lab=out}
C {iopin.sym} 800 -400 3 0 {name=p8 lab=out2}
C {iopin.sym} -10 -200 0 0 {name=p10 lab=VDD}
C {iopin.sym} -10 -180 0 0 {name=p11 lab=VP}
C {iopin.sym} -10 -160 0 0 {name=p18 lab=VCONTROL}
C {iopin.sym} -10 -140 0 0 {name=p19 lab=VSS}
C {lab_wire.sym} -50 -140 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 290 -140 0 1 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 630 -140 0 1 {name=p23 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} -60 -400 0 0 {name=M2
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
C {iopin.sym} -130 -400 2 0 {name=p12 lab=vreset}
C {lab_wire.sym} -40 -340 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {gf180/ring_oscillator_pg/inversor.sym} -330 -100 0 0 {name=x1}
C {gf180/ring_oscillator_pg/inversor.sym} 10 -100 0 0 {name=x2}
C {gf180/ring_oscillator_pg/inversor.sym} 350 -100 0 0 {name=x3}
