v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 220 -370 260 -370 {lab=A}
N 100 -130 140 -130 {lab=B}
N 300 -270 400 -270 {lab=VDD}
N 180 -130 280 -130 {lab=VSS}
N 180 -100 180 -60 {lab=VSS}
N 480 -130 580 -130 {lab=VSS}
N 480 -100 480 -60 {lab=VSS}
N 300 -370 400 -370 {lab=VDD}
N 300 -240 300 -200 {lab=OUTN}
N 220 -270 260 -270 {lab=B}
N 300 -340 300 -300 {lab=#net1}
N 400 -130 440 -130 {lab=A}
N 180 -200 180 -160 {lab=OUTN}
N 660 -270 660 -200 {lab=OUTN}
N 660 -270 700 -270 {lab=OUTN}
N 740 -240 740 -160 {lab=OUT}
N 660 -200 660 -130 {lab=OUTN}
N 660 -130 700 -130 {lab=OUTN}
N 740 -130 840 -130 {lab=VSS}
N 740 -100 740 -60 {lab=VSS}
N 740 -270 840 -270 {lab=VDD}
N 740 -340 740 -300 {lab=VDD}
N 740 -200 840 -200 {lab=OUT}
N 100 -200 180 -200 {lab=OUTN}
N 480 -200 480 -160 {lab=OUTN}
N 180 -200 480 -200 {lab=OUTN}
N 300 -460 300 -400 {lab=VDD}
N 480 -200 660 -200 {lab=OUTN}
C {symbols/nfet_03v3.sym} 160 -130 0 0 {name=MNB
L=0.28u
W=1.4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 280 -270 0 0 {name=MPB
L=0.28u
W=1.4u
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
C {opin.sym} 840 -200 0 0 {name=p1 lab=OUT}
C {ipin.sym} 400 -130 0 0 {name=p2 lab=A}
C {iopin.sym} 300 -460 3 0 {name=p5 lab=VDD}
C {iopin.sym} 480 -60 1 0 {name=p4 lab=VSS}
C {symbols/nfet_03v3.sym} 460 -130 0 0 {name=MNA
L=0.28u
W=1.4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 280 -130 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 580 -130 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {symbols/pfet_03v3.sym} 280 -370 0 0 {name=MPA
L=0.28u
W=1.4u
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
C {lab_pin.sym} 400 -370 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 400 -270 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {ipin.sym} 100 -130 0 0 {name=p9 lab=B}
C {lab_pin.sym} 220 -370 0 0 {name=p10 sig_type=std_logic lab=A}
C {lab_pin.sym} 220 -270 0 0 {name=p13 sig_type=std_logic lab=B}
C {symbols/nfet_03v3.sym} 720 -130 0 0 {name=MIN
L=0.28u
W=1.4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 720 -270 0 0 {name=MIP
L=0.28u
W=1.4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 840 -130 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 840 -270 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 -200 0 0 {name=p17 sig_type=std_logic lab=OUTN}
C {lab_pin.sym} 740 -60 1 1 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 180 -60 1 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 740 -340 3 1 {name=p11 sig_type=std_logic lab=VDD}
