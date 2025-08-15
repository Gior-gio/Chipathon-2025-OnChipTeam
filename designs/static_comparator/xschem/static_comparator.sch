v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 -20 -140 {}
N 30 -70 70 -70 {lab=IBIAS}
N -10 -160 -10 -100 {lab=IBIAS}
N 110 -240 110 -100 {lab=#net1}
N 50 -120 50 -70 {lab=IBIAS}
N -10 -120 50 -120 {lab=IBIAS}
N -10 -40 -10 -10 {lab=VSS}
N 110 -40 110 -10 {lab=VSS}
N -10 -10 280 -10 {lab=VSS}
N 110 -70 140 -70 {lab=VSS}
N 140 -70 140 -60 {lab=VSS}
N 140 -60 140 -10 {lab=VSS}
N -40 -70 -10 -70 {lab=VSS}
N -40 -70 -40 -10 {lab=VSS}
N -40 -10 -10 -10 {lab=VSS}
N 150 -270 260 -270 {lab=#net1}
N 110 -220 170 -220 {lab=#net1}
N 170 -270 170 -220 {lab=#net1}
N 370 -340 370 -300 {lab=VDD}
N 110 -340 110 -300 {lab=VDD}
N 110 -340 300 -340 {lab=VDD}
N 370 -370 370 -340 {lab=VDD}
N 280 -10 300 -10 {lab=VSS}
N 300 -10 300 20 {lab=VSS}
N 80 -270 110 -270 {lab=VDD}
N 80 -280 80 -270 {lab=VDD}
N 80 -340 80 -280 {lab=VDD}
N 80 -340 110 -340 {lab=VDD}
N 370 -270 400 -270 {lab=VDD}
N 400 -280 400 -270 {lab=VDD}
N 400 -340 400 -280 {lab=VDD}
N 370 -340 400 -340 {lab=VDD}
N 300 -340 370 -340 {lab=VDD}
N 260 -270 330 -270 {lab=#net1}
N 280 -140 280 -100 {lab=Vx+}
N 280 -40 280 -10 {lab=VSS}
N 250 -70 280 -70 {lab=VSS}
N 250 -70 250 -10 {lab=VSS}
N 280 -220 280 -200 {lab=#net2}
N 280 -220 370 -220 {lab=#net2}
N 370 -240 370 -220 {lab=#net2}
N 280 -170 320 -170 {lab=VDD}
N 320 -70 340 -70 {lab=Vx+}
N 340 -80 340 -70 {lab=Vx+}
N 340 -110 340 -80 {lab=Vx+}
N 280 -110 340 -110 {lab=Vx+}
N 210 -170 240 -170 {lab=V+}
N 230 -120 280 -120 {lab=Vx+}
N 510 -220 510 -200 {lab=#net2}
N 370 -220 510 -220 {lab=#net2}
N 460 -170 510 -170 {lab=VDD}
N 510 -140 510 -100 {lab=Vx-}
N 450 -70 470 -70 {lab=Vx-}
N 450 -80 450 -70 {lab=Vx-}
N 450 -110 450 -80 {lab=Vx-}
N 450 -110 510 -110 {lab=Vx-}
N 510 -40 510 -10 {lab=VSS}
N 300 -10 510 -10 {lab=VSS}
N 510 -70 540 -70 {lab=VSS}
N 540 -70 540 -10 {lab=VSS}
N 510 -10 540 -10 {lab=VSS}
N 510 -120 570 -120 {lab=Vx-}
N 550 -170 590 -170 {lab=V-}
N 740 -340 740 -300 {lab=VDD}
N 400 -340 740 -340 {lab=VDD}
N 920 -340 920 -300 {lab=VDD}
N 740 -340 920 -340 {lab=VDD}
N 740 -240 740 -150 {lab=#net3}
N 920 -240 920 -150 {lab=VOUT}
N 740 -90 740 -10 {lab=VSS}
N 540 -10 740 -10 {lab=VSS}
N 920 -90 920 -10 {lab=VSS}
N 740 -10 920 -10 {lab=VSS}
N 645 -120 700 -120 {lab=Vx-}
N 960 -120 1020 -120 {lab=Vx+}
N 740 -120 770 -120 {lab=VSS}
N 770 -120 770 -75 {lab=VSS}
N 740 -75 770 -75 {lab=VSS}
N 890 -120 920 -120 {lab=VSS}
N 890 -120 890 -75 {lab=VSS}
N 890 -75 920 -75 {lab=VSS}
N 705 -270 740 -270 {lab=VDD}
N 705 -340 705 -270 {lab=VDD}
N 920 -270 945 -270 {lab=VDD}
N 945 -340 945 -270 {lab=VDD}
N 920 -340 945 -340 {lab=VDD}
N 920 -190 1020 -190 {lab=VOUT}
N 780 -270 880 -270 {lab=#net3}
N 740 -190 820 -190 {lab=#net3}
N 820 -270 820 -190 {lab=#net3}
C {symbols/nfet_03v3.sym} 10 -70 0 1 {name=M1
L=4u
W=1.1u
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
C {symbols/pfet_03v3.sym} 130 -270 0 1 {name=M3
L=2u
W=4.5u
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
C {symbols/nfet_03v3.sym} 90 -70 0 0 {name=M2
L=4u
W=625n
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
C {iopin.sym} -140 -260 0 0 {name=p1 lab=IBIAS
}
C {lab_wire.sym} -10 -160 0 0 {name=p2 sig_type=std_logic lab=IBIAS
}
C {iopin.sym} -140 -230 0 0 {name=p3 lab=VSS
}
C {iopin.sym} -140 -290 0 0 {name=p5 lab=VDD}
C {symbols/pfet_03v3.sym} 350 -270 0 0 {name=M4
L=2u
W=25u
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
C {lab_wire.sym} 370 -370 0 0 {name=p6 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 300 20 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {symbols/pfet_03v3.sym} 260 -170 0 0 {name=M5
L=360n
W=2u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 300 -70 0 1 {name=M7
L=2u
W=985n
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
C {lab_wire.sym} 320 -170 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {iopin.sym} -140 -200 0 0 {name=p8 lab=V+}
C {iopin.sym} -140 -170 0 0 {name=p9 lab=V-
}
C {lab_wire.sym} 210 -170 0 0 {name=p10 sig_type=std_logic lab=V+}
C {symbols/pfet_03v3.sym} 530 -170 0 1 {name=M6
L=360n
W=2u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 460 -170 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} 490 -70 0 0 {name=M8
L=2u
W=985n
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
C {lab_wire.sym} 590 -170 2 0 {name=p12 sig_type=std_logic lab=V-}
C {lab_wire.sym} 230 -120 0 0 {name=p13 sig_type=std_logic lab=Vx+}
C {lab_wire.sym} 570 -120 2 0 {name=p14 sig_type=std_logic lab=Vx-}
C {symbols/pfet_03v3.sym} 760 -270 0 1 {name=M9
L=4u
W=950n
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
C {symbols/pfet_03v3.sym} 900 -270 0 0 {name=M10
L=4u
W=950n
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
C {symbols/nfet_03v3.sym} 720 -120 0 0 {name=M11
L=2u
W=1.1u
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
C {symbols/nfet_03v3.sym} 940 -120 0 1 {name=M12
L=2u
W=1.1u
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
C {lab_wire.sym} 645 -120 0 0 {name=p15 sig_type=std_logic lab=Vx-}
C {lab_wire.sym} 1020 -120 2 0 {name=p16 sig_type=std_logic lab=Vx+}
C {iopin.sym} -140 -145 0 0 {name=p17 lab=VOUT}
C {lab_wire.sym} 1020 -190 2 0 {name=p18 sig_type=std_logic lab=VOUT}
