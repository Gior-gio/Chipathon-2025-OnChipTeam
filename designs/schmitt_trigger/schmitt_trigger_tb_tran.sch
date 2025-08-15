v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -250 60 -210 {lab=#net1}
N 140 -250 140 -210 {lab=#net2}
N 440 -240 500 -240 {lab=IN}
N 760 -240 850 -240 {lab=VOUT}
N 60 -150 60 -130 {lab=GND}
N 140 -150 140 -130 {lab=GND}
N 620 -350 620 -320 {lab=VDD}
N 850 -240 850 -210 {lab=VOUT}
N 850 -150 850 -120 {lab=GND}
N 60 -330 60 -310 {lab=VDD}
N 140 -330 140 -310 {lab=IN}
N 620 -160 620 -120 {lab=GND}
N 620 -360 620 -350 {lab=VDD}
C {vsource.sym} 60 -180 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 140 -180 0 0 {name=V2 value="pwl 0 0 100u 3.3 200u 0" savecurrent=false}
C {gnd.sym} 60 -130 0 0 {name=l4 lab=GND}
C {gnd.sym} 140 -130 0 0 {name=l5 lab=GND}
C {gnd.sym} 850 -120 0 0 {name=l7 lab=GND}
C {capa.sym} 850 -180 0 0 {name=C1
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 140 -330 0 0 {name=p1 sig_type=std_logic lab=IN
}
C {lab_wire.sym} 440 -240 0 0 {name=p3 sig_type=std_logic lab=IN
}
C {lab_wire.sym} 60 -330 0 0 {name=p5 sig_type=std_logic lab=VDD

}
C {lab_wire.sym} 620 -360 0 0 {name=p8 sig_type=std_logic lab=VDD

}
C {devices/code_shown.sym} 20 -440 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_wire.sym} 850 -240 0 0 {name=p10 sig_type=std_logic lab=VOUT

}
C {devices/launcher.sym} 80 -490 0 0 {name=h3
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {code.sym} 910 -270 0 0 {name=NGSPICE1 only_toplevel=true
value="

.control
save all

** Simulación transitoria
tran 1u 200u

setplot tran1
let vin  = v(IN)
let vout = v(VOUT)

meas tran vin_fall FIND v(IN) WHEN v(VOUT)=1.65 FALL=1
meas tran vin_rise FIND v(IN) WHEN v(VOUT)=1.65 RISE=1

let diff = abs(vin_fall-vin_rise)
print diff

plot vout vin

write comparator_tb_tran.raw
.endc
"}
C {res.sym} 140 -280 2 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 60 -280 2 0 {name=R4
value=50
footprint=1206
device=resistor
m=1}
C {title.sym} 160 -30 0 0 {name= l1 author="Angel Castro & Joan Torres -Onchip- Group-"}
C {gf180/schmitt_trigger/schmitt_trigger.sym} 460 -140 0 0 {name=x1}
C {gnd.sym} 620 -120 0 0 {name=l2 lab=GND}
