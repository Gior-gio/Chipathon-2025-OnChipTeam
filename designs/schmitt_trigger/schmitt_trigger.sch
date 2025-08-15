v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 460 -410 {}
N 440 -630 440 -550 {lab=#net1}
N 440 -490 440 -410 {lab=#net2}
N 440 -350 440 -270 {lab=#net3}
N 320 -240 400 -240 {lab=INPUT}
N 320 -660 320 -240 {lab=INPUT}
N 320 -660 400 -660 {lab=INPUT}
N 320 -520 400 -520 {lab=INPUT}
N 320 -380 400 -380 {lab=INPUT}
N 440 -310 560 -310 {lab=#net3}
N 590 -440 590 -350 {lab=#net2}
N 590 -450 590 -440 {lab=#net2}
N 440 -450 590 -450 {lab=#net2}
N 440 -590 560 -590 {lab=#net1}
N 590 -550 590 -450 {lab=#net2}
N 700 -590 720 -590 {lab=#net2}
N 700 -590 700 -450 {lab=#net2}
N 700 -450 700 -310 {lab=#net2}
N 700 -310 720 -310 {lab=#net2}
N 760 -560 760 -340 {lab=OUTPUT}
N 590 -450 660 -450 {lab=#net2}
N 760 -730 760 -620 {lab=VDD}
N 440 -730 440 -690 {lab=VDD}
N 440 -730 760 -730 {lab=VDD}
N 440 -210 440 -170 {lab=VSS}
N 440 -170 760 -170 {lab=VSS}
N 760 -280 760 -170 {lab=VSS}
N 760 -310 800 -310 {lab=VSS}
N 800 -310 800 -170 {lab=VSS}
N 760 -170 800 -170 {lab=VSS}
N 760 -590 800 -590 {lab=VDD}
N 800 -730 800 -590 {lab=VDD}
N 760 -730 800 -730 {lab=VDD}
N 440 -660 480 -660 {lab=VDD}
N 480 -730 480 -660 {lab=VDD}
N 440 -520 520 -520 {lab=VDD}
N 520 -730 520 -520 {lab=VDD}
N 440 -240 480 -240 {lab=VSS}
N 480 -240 480 -170 {lab=VSS}
N 440 -380 520 -380 {lab=VSS}
N 520 -380 520 -170 {lab=VSS}
N 590 -310 590 -170 {lab=VSS}
N 590 -730 590 -590 {lab=VDD}
N 620 -310 640 -310 {lab=VDD}
N 660 -450 700 -450 {lab=#net2}
N 640 -310 660 -310 {lab=VDD}
N 620 -590 660 -590 {lab=VSS}
N 260 -450 320 -450 {lab=INPUT}
N 760 -450 880 -450 {lab=OUTPUT}
N 590 -790 590 -730 {lab=VDD}
N 590 -170 590 -120 {lab=VSS}
N 590 -120 590 -110 {lab=VSS}
C {symbols/nfet_03v3.sym} 420 -380 0 0 {name=M1
L=0.28u
W=2u
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
C {symbols/nfet_03v3.sym} 420 -240 0 0 {name=M2
L=0.28u
W=2u
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
C {symbols/pfet_03v3.sym} 420 -520 0 0 {name=M3
L=0.28u
W=6u
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
C {symbols/pfet_03v3.sym} 420 -660 0 0 {name=M4
L=0.28u
W=6u
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
C {symbols/pfet_03v3.sym} 590 -570 3 0 {name=M5
L=0.56u
W=1.5u
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
C {symbols/nfet_03v3.sym} 590 -330 1 0 {name=M6
L=0.56u
W=0.5u
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
C {title.sym} 170 -40 0 0 {name=l1 author="Angel_Castro_&_Joan_Torres"}
C {symbols/pfet_03v3.sym} 740 -590 0 0 {name=M7
L=0.28u
W=6u
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
C {symbols/nfet_03v3.sym} 740 -310 0 0 {name=M8
L=0.28u
W=2u
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
C {ipin.sym} 260 -450 0 0 {name=p1 lab=INPUT}
C {opin.sym} 880 -450 0 0 {name=p2 lab=OUTPUT}
C {lab_wire.sym} 590 -760 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 660 -310 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 590 -140 0 0 {name=p5 sig_type=std_logic lab=VSS


}
C {lab_wire.sym} 660 -590 1 0 {name=p6 sig_type=std_logic lab=VSS


}
C {iopin.sym} 590 -110 0 0 {name=p7 lab=VSS}
C {iopin.sym} 590 -790 0 0 {name=p8 lab=VDD}
