v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {CR-Inverter Chain} -290 -700 0 0 0.4 0.4 {}
T {Reset Switches} 110 -700 0 0 0.4 0.4 {}
T {PMOS control voltage} 460 -810 0 0 0.4 0.4 {}
N -200 -640 -200 -600 {lab=VDD}
N -200 -480 -200 -440 {lab=VSS}
N -200 -460 -200 -450 {lab=VSS}
N -360 -520 -280 -520 {lab=VctrN}
N -360 -560 -280 -560 {lab=VctrP}
N -360 -540 -280 -540 {lab=A[4:0]}
N -100 -540 -0 -540 {lab=A[0],A[4:1]}
N 220 -540 320 -540 {lab=VSS}
N 100 -540 180 -540 {lab=Vrst}
N 220 -640 220 -570 {lab=A[4],A[2],A[0]}
N 580 -510 580 -470 {lab=VSS}
N 480 -540 540 -540 {lab=VctrN}
N 580 -470 580 -440 {lab=VSS}
N 480 -670 540 -670 {lab=VctrP}
N 580 -640 580 -570 {lab=VctrP}
N 580 -670 680 -670 {lab=VDD}
N 580 -540 680 -540 {lab=VSS}
N 220 -510 220 -440 {lab=VSS}
N 580 -760 580 -700 {lab=VDD}
N 520 -670 520 -620 {lab=VctrP}
N 520 -620 580 -620 {lab=VctrP}
C {iopin.sym} -420 -580 0 1 {name=p10 lab=VDD}
C {iopin.sym} -420 -540 0 1 {name=p18 lab=VctrN}
C {iopin.sym} -420 -560 0 1 {name=p19 lab=VSS}
C {symbols/nfet_03v3.sym} 200 -540 0 0 {name=MRST[2:0]
L=0.5u
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
C {iopin.sym} -420 -520 2 0 {name=p12 lab=Vrst}
C {gf180/integrator/xschem/integrator_inv.sym} -200 -540 0 0 {name=xINV[4:0]}
C {lab_wire.sym} -300 -560 0 0 {name=p1 sig_type=std_logic lab=VctrP}
C {lab_wire.sym} -300 -540 0 0 {name=p2 sig_type=std_logic lab=A[4:0]}
C {lab_wire.sym} -300 -520 0 0 {name=p3 sig_type=std_logic lab=VctrN}
C {lab_wire.sym} -200 -620 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -200 -460 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -10 -540 0 0 {name=p6 sig_type=std_logic lab=A[0],A[4:1]}
C {lab_wire.sym} 290 -540 0 1 {name=MRST2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 140 -540 0 0 {name=MRST3 sig_type=std_logic lab=Vrst}
C {lab_wire.sym} 220 -600 0 0 {name=MRST4 sig_type=std_logic lab=A[4],A[2],A[0]}
C {lab_wire.sym} 480 -540 0 0 {name=p7 sig_type=std_logic lab=VctrN}
C {lab_wire.sym} 580 -730 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 480 -670 0 0 {name=p8 sig_type=std_logic lab=VctrP}
C {symbols/nfet_03v3.sym} 560 -540 0 0 {name=MNBias
L=0.5u
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
C {symbols/pfet_03v3.sym} 560 -670 0 0 {name=MPBIas
L=0.5u
W=2u
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
C {lab_wire.sym} 650 -540 0 1 {name=MRST5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 650 -670 0 1 {name=MRST6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 220 -470 0 0 {name=MRST1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 580 -470 0 0 {name=MRST7 sig_type=std_logic lab=VSS}
C {iopin.sym} -420 -500 2 0 {name=p11 lab=A[4:0]}
