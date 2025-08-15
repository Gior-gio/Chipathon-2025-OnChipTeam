v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 200 -340 200 -260 {lab=B}
N 200 -300 320 -300 {lab=B}
N 120 -370 160 -370 {lab=A}
N 120 -370 120 -300 {lab=A}
N 80 -300 120 -300 {lab=A}
N 120 -300 120 -230 {lab=A}
N 120 -230 160 -230 {lab=A}
N 200 -370 300 -370 {lab=VDD}
N 200 -230 300 -230 {lab=VSS}
N 200 -130 300 -130 {lab=VSS}
N 200 -200 200 -160 {lab=XN}
N 200 -100 200 -60 {lab=VSS}
N 200 -440 200 -400 {lab=XP}
N 200 -470 300 -470 {lab=VDD}
N 200 -540 200 -500 {lab=VDD}
N 120 -470 160 -470 {lab=VctrP}
N 120 -130 160 -130 {lab=VctrN}
C {symbols/nfet_03v3.sym} 180 -230 0 0 {name=MN2
L=0.5u
W=1u
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
C {symbols/pfet_03v3.sym} 180 -370 0 0 {name=MP1
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
model=pfet_03v3
spiceprefix=X
}
C {opin.sym} 320 -300 0 0 {name=p1 lab=B}
C {ipin.sym} 80 -300 0 0 {name=p2 lab=A}
C {iopin.sym} 200 -540 1 1 {name=p5 lab=VDD}
C {iopin.sym} 200 -60 1 0 {name=p4 lab=VSS}
C {symbols/pfet_03v3.sym} 180 -470 0 0 {name=MP2
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 180 -130 0 0 {name=MN1
L=0.5u
W=1u
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
C {iopin.sym} 120 -470 0 1 {name=p6 lab=VctrP}
C {iopin.sym} 120 -130 0 1 {name=p3 lab=VctrN}
C {lab_pin.sym} 200 -420 0 0 {name=p7 sig_type=std_logic lab=XP}
C {lab_pin.sym} 200 -180 0 0 {name=p8 sig_type=std_logic lab=XN}
C {lab_pin.sym} 300 -470 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 300 -370 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 300 -230 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 300 -130 0 1 {name=p12 sig_type=std_logic lab=VSS}
