v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Loads} 190 -70 0 0 0.4 0.4 {}
N 150 -230 150 -200 {lab=Iref1p}
N 70 -170 110 -170 {lab=Iref1p}
N 70 -230 70 -170 {lab=Iref1p}
N 70 -230 150 -230 {lab=Iref1p}
N 150 -550 150 -450 {lab=VDD}
N 150 -390 150 -350 {lab=Iref1n}
N 70 -450 110 -450 {lab=Iref1n}
N 70 -450 70 -390 {lab=Iref1n}
N 70 -390 150 -390 {lab=Iref1n}
N 370 -550 370 -450 {lab=VDD}
N 370 -390 370 -350 {lab=Iref50n}
N 290 -450 290 -390 {lab=Iref50n}
N 290 -450 330 -450 {lab=Iref50n}
N 290 -390 370 -390 {lab=Iref50n}
N 150 -170 150 -90 {lab=VSS}
N 370 -230 370 -200 {lab=Iref50p}
N 290 -170 330 -170 {lab=Iref50p}
N 290 -230 290 -170 {lab=Iref50p}
N 290 -230 370 -230 {lab=Iref50p}
N 370 -170 370 -90 {lab=VSS}
N 150 -270 150 -230 {lab=Iref1p}
N 150 -420 150 -390 {lab=Iref1n}
N 370 -420 370 -390 {lab=Iref50n}
N 370 -270 370 -230 {lab=Iref50p}
C {/foss/pdks/volare/sky130/versions/0fe599b2afb6708d281543108caf8310912f54af/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 130 -170 0 0 {name=M3
W=6
L=4
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 150 -90 2 1 {name=p40 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 150 -270 2 1 {name=p41 sig_type=std_logic lab=Iref1p}
C {/foss/pdks/volare/sky130/versions/0fe599b2afb6708d281543108caf8310912f54af/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 130 -450 0 0 {name=M1
L=4
W=8
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} 150 -550 2 1 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 150 -350 2 1 {name=p31 sig_type=std_logic lab=Iref1n}
C {/foss/pdks/volare/sky130/versions/0fe599b2afb6708d281543108caf8310912f54af/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 350 -450 0 0 {name=M2
L=4
W=8
nf=1 mult=10
model=pfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} 370 -550 2 1 {name=p44 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 370 -350 2 1 {name=p45 sig_type=std_logic lab=Iref50n}
C {/foss/pdks/volare/sky130/versions/0fe599b2afb6708d281543108caf8310912f54af/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 350 -170 0 0 {name=M4
W=6
L=4
nf=1 
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 370 -90 2 1 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 370 -270 2 1 {name=p32 sig_type=std_logic lab=Iref50p}
C {ipin.sym} 590 -560 0 0 {name=p1 lab=Iref1n}
C {iopin.sym} 570 -440 0 0 {name=p23 lab=VDD}
C {iopin.sym} 570 -410 0 0 {name=p24 lab=VSS}
C {ipin.sym} 590 -530 0 0 {name=p8 lab=Iref50n}
C {ipin.sym} 590 -500 0 0 {name=p9 lab=Iref1p}
C {ipin.sym} 590 -470 0 0 {name=p10 lab=Iref50p}
