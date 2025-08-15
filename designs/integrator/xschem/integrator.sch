v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 730 -970 730 -940 {lab=VDD}
N 1840 -970 1840 -940 {lab=VDD}
N 430 -820 490 -820 {lab=RST}
N 430 -700 490 -700 {lab=Vctrl}
N 1540 -820 1600 -820 {lab=RST}
N 1540 -700 1600 -700 {lab=Vref}
N 1960 -760 2040 -760 {lab=B,PREF[3:0]}
N 850 -760 930 -760 {lab=A,PCTR[3:0]}
N 1280 -830 1280 -800 {lab=VDD}
N 1380 -720 1460 -720 {lab=OUT}
N 730 -580 730 -550 {lab=VSS}
N 1840 -580 1840 -550 {lab=VSS}
N 1280 -640 1280 -610 {lab=VSS}
N 1000 -740 1180 -740 {lab=PCTR[0],A,PCTR[3:1]}
N 1000 -710 1180 -710 {lab=B,PREF[3:0]}
N 150 -780 200 -780 {lab=Vctrl}
N 150 -730 200 -730 {lab=RST}
N 150 -680 200 -680 {lab=Vref}
N 90 -910 140 -910 {lab=VDD}
N 100 -540 150 -540 {lab=VSS}
N 2230 -750 2280 -750 {lab=OUT}
C {gf180/integrator_RO5St/xschem/integrator_RO5St.sym} 670 -760 0 0 {name=xROCTR}
C {gf180/integrator_RO5St/xschem/integrator_RO5St.sym} 1780 -760 0 0 {name=xROREF}
C {lab_wire.sym} 730 -970 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1840 -970 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 440 -820 0 1 {name=p7 sig_type=std_logic lab=RST}
C {lab_wire.sym} 1550 -820 0 1 {name=p9 sig_type=std_logic lab=RST}
C {lab_wire.sym} 440 -700 0 1 {name=p11 sig_type=std_logic lab=Vctrl}
C {lab_wire.sym} 1550 -700 0 1 {name=p13 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 1970 -760 0 1 {name=p15 sig_type=std_logic lab=B,PREF[3:0]}
C {lab_wire.sym} 860 -760 0 1 {name=p16 sig_type=std_logic lab=A,PCTR[3:0]}
C {gf180/integrator_phasedetector/xschem/integrator_phasedetector.sym} 1280 -720 0 0 {name=xMPD}
C {lab_wire.sym} 1280 -830 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1410 -720 0 1 {name=p6 sig_type=std_logic lab=OUT}
C {lab_wire.sym} 730 -550 2 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1840 -550 2 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1280 -610 2 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1020 -740 0 1 {name=p1 sig_type=std_logic lab=PCTR[0],A,PCTR[3:1]}
C {lab_wire.sym} 1050 -710 0 1 {name=p2 sig_type=std_logic lab=B,PREF[3:0]}
C {ipin.sym} 150 -780 0 0 {name=p8 lab=Vctrl}
C {lab_wire.sym} 160 -780 0 1 {name=p10 sig_type=std_logic lab=Vctrl}
C {ipin.sym} 150 -730 0 0 {name=p12 lab=RST}
C {lab_wire.sym} 160 -730 0 1 {name=p14 sig_type=std_logic lab=RST}
C {ipin.sym} 150 -680 0 0 {name=p19 lab=Vref}
C {lab_wire.sym} 160 -680 0 1 {name=p22 sig_type=std_logic lab=Vref}
C {iopin.sym} 140 -910 0 0 {name=p21 lab=VDD}
C {lab_wire.sym} 100 -910 0 1 {name=p23 sig_type=std_logic lab=VDD}
C {iopin.sym} 150 -540 0 0 {name=p24 lab=VSS}
C {lab_wire.sym} 110 -540 0 1 {name=p25 sig_type=std_logic lab=VSS}
C {opin.sym} 2280 -750 0 0 {name=p26 lab=OUT}
C {lab_wire.sym} 2230 -750 0 1 {name=p27 sig_type=std_logic lab=OUT}
C {title.sym} 160 -40 0 0 {name=l1 author="Sergio Carreño"}
