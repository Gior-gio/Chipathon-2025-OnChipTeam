v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 200 -380 200 -320 {lab=VDD}
N 200 -260 200 -180 {lab=B}
N 200 -220 320 -220 {lab=B}
N 120 -290 160 -290 {lab=A}
N 120 -290 120 -220 {lab=A}
N 80 -220 120 -220 {lab=A}
N 120 -220 120 -150 {lab=A}
N 120 -150 160 -150 {lab=A}
N 200 -290 300 -290 {lab=VDD}
N 300 -340 300 -290 {lab=VDD}
N 200 -340 300 -340 {lab=VDD}
N 200 -150 300 -150 {lab=VSS}
N 300 -150 300 -100 {lab=VSS}
N 200 -100 300 -100 {lab=VSS}
N 200 -120 200 -80 {lab=VSS}
C {symbols/nfet_03v3.sym} 180 -150 0 0 {name=MN
L=1.5u
W=0.3u
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
C {symbols/pfet_03v3.sym} 180 -290 0 0 {name=MP
L=1.5u
W=0.3u
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
C {opin.sym} 320 -220 0 0 {name=p1 lab=B}
C {ipin.sym} 80 -220 0 0 {name=p2 lab=A}
C {iopin.sym} 200 -380 1 1 {name=p5 lab=VDD}
C {iopin.sym} 200 -80 1 0 {name=p4 lab=VSS}
