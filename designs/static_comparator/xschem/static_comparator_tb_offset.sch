v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 100 -280 100 -240 {lab=#net1}
N 180 -280 180 -240 {lab=#net2}
N 480 -270 540 -270 {lab=INP}
N 480 -230 540 -230 {lab=VOUT}
N 710 -250 800 -250 {lab=VOUT}
N 100 -180 100 -160 {lab=GND}
N 180 -180 180 -160 {lab=GND}
N 260 -280 260 -240 {lab=#net3}
N 260 -180 260 -140 {lab=IBIAS}
N 630 -360 630 -310 {lab=IBIAS}
N 600 -340 600 -310 {lab=VDD}
N 800 -250 800 -220 {lab=VOUT}
N 800 -160 800 -130 {lab=GND}
N 480 -230 480 -160 {lab=VOUT}
N 480 -150 740 -150 {lab=VOUT}
N 740 -250 740 -160 {lab=VOUT}
N 620 -200 620 -180 {lab=GND}
N 480 -160 480 -150 {lab=VOUT}
N 740 -160 740 -150 {lab=VOUT}
N 100 -350 100 -340 {lab=VDD}
N 180 -350 180 -340 {lab=INP}
N 260 -350 260 -340 {lab=VDD}
C {title.sym} 160 -40 0 0 {name=l1 author="Angel Castro & Joan Torres -Onchip Group-"}
C {vsource.sym} 100 -210 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 180 -210 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 100 -160 0 0 {name=l4 lab=GND}
C {gnd.sym} 180 -160 0 0 {name=l5 lab=GND}
C {gnd.sym} 620 -180 0 0 {name=l6 lab=GND}
C {gnd.sym} 800 -130 0 0 {name=l7 lab=GND}
C {capa.sym} 800 -190 0 0 {name=C1
m=1
value=440f
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 180 -350 0 0 {name=p1 sig_type=std_logic lab=INP
}
C {lab_wire.sym} 480 -270 0 0 {name=p3 sig_type=std_logic lab=INP
}
C {lab_wire.sym} 100 -350 0 0 {name=p5 sig_type=std_logic lab=VDD

}
C {isource.sym} 260 -210 0 0 {name=I0 value=400n
}
C {lab_wire.sym} 260 -350 0 0 {name=p6 sig_type=std_logic lab=VDD

}
C {lab_wire.sym} 260 -140 0 0 {name=p7 sig_type=std_logic lab=IBIAS



}
C {lab_wire.sym} 600 -340 0 0 {name=p8 sig_type=std_logic lab=VDD

}
C {lab_wire.sym} 630 -360 0 0 {name=p9 sig_type=std_logic lab=IBIAS



}
C {devices/code_shown.sym} 60 -420 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_wire.sym} 800 -250 0 0 {name=p10 sig_type=std_logic lab=VOUT

}
C {devices/launcher.sym} 120 -470 0 0 {name=h3
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {code.sym} 870 -240 0 0 {name=NGSPICE1 only_toplevel=true
value="

.control
save all

**Simulations
op
dc v2 0 1.8 0.01

**Plots
setplot dc1
let VIN = V(INP)
let VOUT = V(VOUT)
plot VOUT

meas dc vout_at_v2_0 find v(VOUT) when v2 = 0

setplot op1
write static_comparator_tb_offset.raw
.endc
"}
C {gf180/static_comparator/xschem/static_comparator.sym} 320 -200 0 0 {name=x1}
C {res.sym} 260 -310 2 0 {name=R3
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 180 -310 2 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 100 -310 2 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
