v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1140 -490 1140 -460 {lab=VSS}
N 1140 -630 1140 -550 {lab=#net1}
N 1140 -820 1140 -690 {lab=B}
N 1140 -960 1140 -880 {lab=#net2}
N 1140 -1080 1140 -1010 {lab=VDD}
N 1140 -980 1190 -980 {lab=VDD}
N 1190 -1030 1190 -980 {lab=VDD}
N 1140 -1030 1190 -1030 {lab=VDD}
N 1050 -660 1100 -660 {lab=A}
N 1050 -850 1100 -850 {lab=A}
N 1050 -850 1050 -660 {lab=A}
N 1140 -850 1190 -850 {lab=VDD}
N 1190 -900 1190 -850 {lab=VDD}
N 1140 -660 1190 -660 {lab=VSS}
N 1190 -660 1190 -600 {lab=VSS}
N 1140 -460 1190 -460 {lab=VSS}
N 1040 -520 1100 -520 {lab=VCONTROL}
N 1020 -750 1050 -750 {lab=A}
N 1140 -750 1270 -750 {lab=B}
N 1140 -1120 1140 -1080 {lab=VDD}
N 1040 -980 1100 -980 {lab=VP}
N 1170 -460 1170 -440 {lab=VSS}
N 1190 -980 1190 -900 {lab=VDD}
N 1190 -600 1190 -510 {lab=VSS}
N 1190 -510 1190 -460 {lab=VSS}
N 1140 -520 1190 -520 {lab=VSS}
C {symbols/nfet_03v3.sym} 1120 -660 0 0 {name=M1
L=0.3u
W=\{w\}
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
C {symbols/pfet_03v3.sym} 1120 -850 0 0 {name=M2
L=0.3u
W=\{wp\}
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
C {symbols/nfet_03v3.sym} 1120 -520 0 0 {name=M3
L=0.3u
W=\{w\}
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
C {symbols/pfet_03v3.sym} 1120 -980 0 0 {name=M4
L=0.3u
W=\{wp\}
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
C {iopin.sym} 1270 -750 0 0 {name=p1 lab=B}
C {iopin.sym} 1020 -750 0 1 {name=p2 lab=A}
C {iopin.sym} 1040 -520 0 1 {name=p3 lab=VCONTROL}
C {iopin.sym} 1140 -1120 1 1 {name=p5 lab=VDD}
C {iopin.sym} 1040 -980 0 1 {name=p6 lab=VP}
C {iopin.sym} 1170 -440 1 0 {name=p4 lab=VSS}
