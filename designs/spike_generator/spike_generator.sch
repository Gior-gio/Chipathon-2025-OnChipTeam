v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -210 -170 -90 -170 {lab=Vcmp}
N 50 -170 170 -170 {lab=Vcmpp}
N 290 -170 410 -170 {lab=Vspk}
N 110 70 190 70 {lab=Ven}
N 370 50 410 50 {lab=Vrst}
N 120 30 190 30 {lab=Vcmpp}
N 120 -150 120 30 {lab=Vcmpp}
N 230 -290 230 -260 {lab=VDD}
N -30 -280 -30 -240 {lab=VDD}
N -30 -100 -30 -60 {lab=VSS}
N 230 -80 230 -60 {lab=VSS}
N 250 -50 250 -30 {lab=VDD}
N 250 130 250 160 {lab=VSS}
N 120 -170 120 -150 {lab=Vcmpp}
C {gf180/gate_or/xschem/gate_or.sym} 270 50 0 0 {name=xOR}
C {gf180/gate_buf_x1/gate_buf_x1.sym} -30 -170 0 0 {name=xBUF}
C {gf180/edge_detector/xschem/edge_detector_TOP.sym} 230 -170 0 0 {name=xED}
C {iopin.sym} -210 -170 2 0 {name=p1 lab=Vcmp}
C {iopin.sym} 110 70 2 0 {name=p2 lab=Ven}
C {iopin.sym} 410 50 0 0 {name=p3 lab=Vrst
}
C {iopin.sym} 410 -170 0 0 {name=p4 lab=Vspk}
C {iopin.sym} 230 -290 3 0 {name=p5 lab=VDD
}
C {iopin.sym} 250 160 1 0 {name=p6 lab=VSS}
C {lab_wire.sym} -30 -280 0 0 {name=p7 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 250 -50 2 0 {name=p9 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} -30 -60 2 0 {name=p10 sig_type=std_logic lab=VSS

}
C {lab_wire.sym} 230 -60 0 0 {name=p11 sig_type=std_logic lab=VSS

}
C {lab_wire.sym} 110 -170 0 0 {name=p8 sig_type=std_logic lab=Vcmpp
}
