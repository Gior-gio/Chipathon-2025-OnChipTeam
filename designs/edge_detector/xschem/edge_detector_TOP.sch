v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -260 -280 -160 -280 {lab=X[0]}
N -340 -390 -340 -350 {lab=VDD}
N -340 -210 -340 -170 {lab=VSS}
N -500 -280 -400 -280 {lab=IN}
N 480 -240 520 -240 {lab=IN}
N 380 -280 520 -280 {lab=X[4]}
N 600 -380 600 -340 {lab=VDD}
N 600 -180 600 -140 {lab=VSS}
N 680 -260 780 -260 {lab=OUT}
N 60 -280 160 -280 {lab=X[3:1]}
N 200 -280 240 -280 {lab=X[3]}
N -120 -280 -80 -280 {lab=X[2:0]}
N 300 -390 300 -350 {lab=VDD}
N 300 -210 300 -170 {lab=VSS}
N -20 -390 -20 -350 {lab=VDD}
N -20 -210 -20 -170 {lab=VSS}
C {lab_pin.sym} -340 -390 3 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -340 -170 1 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -500 -280 2 1 {name=p6 sig_type=std_logic lab=IN}
C {lab_pin.sym} -180 -280 3 1 {name=p7 sig_type=std_logic lab=X[0]}
C {lab_pin.sym} 220 -280 3 1 {name=p9 sig_type=std_logic lab=X[3]}
C {lab_pin.sym} 500 -280 3 1 {name=p10 sig_type=std_logic lab=X[4]}
C {lab_pin.sym} 600 -380 3 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 600 -140 1 1 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 780 -260 0 1 {name=p14 sig_type=std_logic lab=OUT}
C {iopin.sym} -240 -550 0 0 {name=p15 lab=VDD}
C {iopin.sym} -330 -550 0 0 {name=p16 lab=VSS}
C {ipin.sym} -470 -550 0 0 {name=p17 lab=IN}
C {opin.sym} -420 -550 0 0 {name=p18 lab=OUT}
C {lab_pin.sym} 500 -240 1 1 {name=p11 sig_type=std_logic lab=IN}
C {lab_pin.sym} 140 -280 3 1 {name=p22 sig_type=std_logic lab=X[3:1]}
C {lab_pin.sym} -100 -280 3 1 {name=p31 sig_type=std_logic lab=X[2:0]}
C {lab_pin.sym} 300 -390 3 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 300 -170 1 1 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -20 -390 3 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -20 -170 1 1 {name=p8 sig_type=std_logic lab=VSS}
C {gf180/gate_and/xschem/gate_and.sym} 600 -260 0 0 {name=x1}
C {gf180/gate_inv_x1/gate_inv_x1.sym} -340 -280 0 0 {name=x2[0]}
C {gf180/gate_inv_x1/gate_inv_x1.sym} -20 -280 0 0 {name=x1[3:1]}
C {gf180/gate_inv_x1/gate_inv_x1.sym} 300 -280 0 0 {name=x2[4]}
