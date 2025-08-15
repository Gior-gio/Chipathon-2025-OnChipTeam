v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -260 60 -220 {lab=#net1}
N 140 -260 140 -220 {lab=#net2}
N 440 -250 500 -250 {lab=INP}
N 440 -210 500 -210 {lab=INN}
N 670 -230 760 -230 {lab=VOUT}
N 60 -160 60 -140 {lab=GND}
N 140 -160 140 -140 {lab=GND}
N 220 -160 220 -140 {lab=GND}
N 220 -260 220 -220 {lab=#net3}
N 300 -260 300 -220 {lab=#net4}
N 300 -160 300 -120 {lab=IBIAS}
N 590 -340 590 -290 {lab=IBIAS}
N 560 -320 560 -290 {lab=VDD}
N 760 -230 760 -200 {lab=VOUT}
N 580 -180 580 -140 {lab=GND}
N 760 -140 760 -110 {lab=GND}
N 60 -340 60 -320 {lab=VDD}
N 140 -340 140 -320 {lab=INP}
N 220 -340 220 -320 {lab=INN}
N 300 -340 300 -320 {lab=VDD}
C {title.sym} 160 -40 0 0 {name= l1 author="Angel Castro & Joan Torres -Onchip- Group-"}
C {vsource.sym} 60 -190 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 140 -190 0 0 {name=V2 value="pwl 0 0 100u 1.8 200u 0" savecurrent=false}
C {gnd.sym} 60 -140 0 0 {name=l4 lab=GND}
C {gnd.sym} 140 -140 0 0 {name=l5 lab=GND}
C {gnd.sym} 580 -140 0 0 {name=l6 lab=GND}
C {gnd.sym} 760 -110 0 0 {name=l7 lab=GND}
C {gnd.sym} 220 -140 0 0 {name=l8 lab=GND}
C {capa.sym} 760 -170 0 0 {name=C1
m=1
value=440f
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 140 -340 0 0 {name=p1 sig_type=std_logic lab=INP
}
C {vsource.sym} 220 -190 0 0 {name=V3 value=1 savecurrent=false}
C {lab_wire.sym} 220 -340 0 0 {name=p2 sig_type=std_logic lab=INN
}
C {lab_wire.sym} 440 -250 0 0 {name=p3 sig_type=std_logic lab=INP
}
C {lab_wire.sym} 440 -210 0 0 {name=p4 sig_type=std_logic lab=INN
}
C {lab_wire.sym} 60 -340 0 0 {name=p5 sig_type=std_logic lab=VDD

}
C {isource.sym} 300 -190 0 0 {name=I0 value=400n
}
C {lab_wire.sym} 300 -340 0 0 {name=p6 sig_type=std_logic lab=VDD

}
C {lab_wire.sym} 300 -120 0 0 {name=p7 sig_type=std_logic lab=IBIAS



}
C {lab_wire.sym} 560 -320 0 0 {name=p8 sig_type=std_logic lab=VDD

}
C {lab_wire.sym} 590 -340 0 0 {name=p9 sig_type=std_logic lab=IBIAS



}
C {devices/code_shown.sym} 20 -420 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_wire.sym} 760 -230 0 0 {name=p10 sig_type=std_logic lab=VOUT

}
C {devices/launcher.sym} 80 -480 0 0 {name=h3
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {code.sym} 830 -220 0 0 {name=NGSPICE1 only_toplevel=true
value="

.control
save all

** Simulación transitoria
tran 1u 200u

setplot tran1
let vin  = v(INP)
let vref = v(INN)
let vout = v(VOUT)
plot vout vin vref

write comparator_tb_tran.raw
.endc
"}
C {gf180/static_comparator/xschem/static_comparator.sym} 280 -180 0 0 {name=x1}
C {res.sym} 300 -290 2 0 {name=R3
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 220 -290 2 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 140 -290 2 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 60 -290 2 0 {name=R4
value=50
footprint=1206
device=resistor
m=1}
