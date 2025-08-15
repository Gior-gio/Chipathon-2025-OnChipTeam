v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 80 20 150 20 {lab=A}
N 150 -40 150 20 {lab=A}
N 150 -40 170 -40 {lab=A}
N 150 20 150 80 {lab=A}
N 150 80 170 80 {lab=A}
N 210 110 210 160 {lab=VSS}
N 210 -10 210 50 {lab=B}
N 210 20 330 20 {lab=B}
N 210 -140 210 -70 {lab=VDD}
N 210 80 270 80 {lab=VSS}
N 270 80 270 130 {lab=VSS}
N 210 130 270 130 {lab=VSS}
N 210 -40 260 -40 {lab=VDD}
N 260 -90 260 -40 {lab=VDD}
N 210 -90 260 -90 {lab=VDD}
C {symbols/pfet_03v3.sym} 190 -40 0 0 {name=M1
L=0.28u
W=100u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 190 80 0 0 {name=M2
L=0.28u
W=100u
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
C {iopin.sym} 210 160 1 0 {name=p1 lab=VSS}
C {iopin.sym} 330 20 0 0 {name=p2 lab=B}
C {iopin.sym} 80 20 2 0 {name=p3 lab=A}
C {iopin.sym} 210 -140 3 0 {name=p4 lab=VDD
}
C {title.sym} -280 310 0 0 {name=l1 author="juan pablo"}
