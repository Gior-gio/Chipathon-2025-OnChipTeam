v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -160 -20 -100 -20 {lab=A[4:0]}
N -160 20 -100 20 {lab=B[4:0]}
N 100 -0 160 -0 {lab=PWM[4:0]}
N 220 -0 280 -0 {lab=OUT}
N -10 70 -10 120 {lab=VSS}
N -10 -120 -10 -70 {lab=VDD}
N 190 20 190 70 {lab=VSS}
C {lab_wire.sym} -10 -120 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {gf180/gate_xor/xschem/gate_xor.sym} -10 0 0 0 {name=xor[4:0]}
C {symbols/ppolyf_u_1k.sym} 190 0 3 0 {name=RXOR[4:0]
W=1e-6
L=1e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} -10 120 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 190 70 2 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -110 -20 0 0 {name=p3 sig_type=std_logic lab=A[4:0]}
C {lab_wire.sym} -110 20 0 0 {name=p4 sig_type=std_logic lab=B[4:0]}
C {lab_wire.sym} 140 0 3 0 {name=p5 sig_type=std_logic lab=PWM[4:0]}
C {lab_wire.sym} 260 0 3 0 {name=p6 sig_type=std_logic lab=OUT}
C {iopin.sym} -240 -30 0 1 {name=p10 lab=VDD}
C {iopin.sym} -260 110 0 0 {name=p18 lab=OUT}
C {iopin.sym} -240 -10 0 1 {name=p19 lab=VSS}
C {iopin.sym} -240 40 2 0 {name=p11 lab=A[4:0]}
C {iopin.sym} -240 60 2 0 {name=p8 lab=B[4:0]}
