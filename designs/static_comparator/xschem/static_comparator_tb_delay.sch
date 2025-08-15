v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 140 -260 140 -220 {lab=#net1}
N 300 -260 300 -220 {lab=#net2}
N 610 -260 670 -260 {lab=INP}
N 610 -220 670 -220 {lab=INN}
N 840 -240 930 -240 {lab=VOUT}
N 140 -160 140 -140 {lab=GND}
N 300 -160 300 -140 {lab=VCM}
N 380 -160 380 -140 {lab=VCM}
N 380 -260 380 -220 {lab=#net3}
N 460 -260 460 -220 {lab=#net4}
N 460 -160 460 -120 {lab=IBIAS}
N 760 -350 760 -300 {lab=IBIAS}
N 730 -330 730 -300 {lab=VDD}
N 930 -240 930 -210 {lab=VOUT}
N 750 -190 750 -150 {lab=VSS}
N 930 -150 930 -120 {lab=GND}
N 220 -260 220 -220 {lab=#net5}
N 220 -160 220 -140 {lab=VSS}
N 380 -140 380 -120 {lab=VCM}
N 300 -140 300 -120 {lab=VCM}
N 60 -260 60 -220 {lab=#net6}
N 60 -160 60 -140 {lab=GND}
N 220 -140 220 -120 {lab=VSS}
N 460 -280 460 -260 {lab=#net4}
N 380 -280 380 -260 {lab=#net3}
N 300 -280 300 -260 {lab=#net2}
N 220 -280 220 -260 {lab=#net5}
N 140 -280 140 -260 {lab=#net1}
N 60 -280 60 -260 {lab=#net6}
N 60 -350 60 -340 {lab=VDD}
N 140 -350 140 -340 {lab=VSS}
N 220 -350 220 -340 {lab=VCM}
N 300 -350 300 -340 {lab=INP}
N 380 -350 380 -340 {lab=INN}
N 460 -350 460 -340 {lab=VDD}
C {vsource.sym} 60 -190 0 0 {name=V1 value=\{VDD\} savecurrent=false}
C {vsource.sym} 300 -190 0 0 {name=V4 value="PULSE(0 0.6 2u 1n 1n 5u 50u)" savecurrent=false}
C {gnd.sym} 140 -140 0 0 {name=l4 lab=GND}
C {gnd.sym} 930 -120 0 0 {name=l7 lab=GND}
C {capa.sym} 930 -180 0 0 {name=C1
m=1
value=440f
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 300 -350 0 0 {name=p1 sig_type=std_logic lab=INP
}
C {vsource.sym} 380 -190 0 0 {name=V5 value="PULSE(0 -0.6 2u 1n 1n 5u 50u)" savecurrent=false}
C {lab_wire.sym} 380 -350 0 0 {name=p2 sig_type=std_logic lab=INN
}
C {lab_wire.sym} 610 -260 0 0 {name=p3 sig_type=std_logic lab=INP
}
C {lab_wire.sym} 610 -220 0 0 {name=p4 sig_type=std_logic lab=INN
}
C {lab_wire.sym} 140 -350 0 0 {name=p5 sig_type=std_logic lab=VSS


}
C {isource.sym} 460 -190 0 0 {name=I0 value=\{IBIAS\}
}
C {lab_wire.sym} 460 -350 0 0 {name=p6 sig_type=std_logic lab=VDD

}
C {lab_wire.sym} 460 -120 0 0 {name=p7 sig_type=std_logic lab=IBIAS



}
C {lab_wire.sym} 730 -330 0 0 {name=p8 sig_type=std_logic lab=VDD

}
C {lab_wire.sym} 760 -350 0 0 {name=p9 sig_type=std_logic lab=IBIAS



}
C {devices/code_shown.sym} 40 -580 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_wire.sym} 930 -240 0 0 {name=p10 sig_type=std_logic lab=VOUT

}
C {devices/launcher.sym} 100 -640 0 0 {name=h3
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {code.sym} 1000 -230 0 0 {name=NGSPICE1 only_toplevel=true
value="

.control
save all

** Simulación transitoria
tran 1u 100u

setplot tran1
let vin  = v(INP) - v(INN)
let vout = v(VOUT)
plot vout vin 

**Medir mínimo y máximo de vout

meas tran VOUT_MAX  max vout
meas tran VOUT_MIN  min vout
meas tran VIN_MAX  max vin
meas tran VIN_MIN  min vin

let Vout_medio = (VOUT_MAX + VOUT_MIN)/2
let Vin_medio = (VIN_MAX + VIN_MIN)/2

meas tran T2 WHEN v(vout)= Vout_medio CROSS=1
meas tran T1 WHEN v(vin)= Vin_medio CROSS=1

meas tran T4 WHEN v(vout)= Vout_medio CROSS=2
meas tran T3 WHEN v(vin)= Vin_medio CROSS=2



let tdrise= T2-T1
let tdfall= T4-T3

print tdrise 
print tdfall 





write comparator_tb_tran.raw
.endc
"}
C {gf180/static_comparator/xschem/static_comparator.sym} 450 -190 0 0 {name=x1}
C {title.sym} 160 -40 0 0 {name= l1 author="Angel Castro & Joan Torres -Onchip- Group-"}
C {vsource.sym} 220 -190 0 0 {name=V3 value=\{VCM\} savecurrent=false}
C {lab_wire.sym} 220 -350 0 0 {name=p11 sig_type=std_logic lab=VCM


}
C {lab_wire.sym} 300 -120 0 0 {name=p12 sig_type=std_logic lab=VCM


}
C {lab_wire.sym} 380 -120 0 0 {name=p13 sig_type=std_logic lab=VCM


}
C {devices/code_shown.sym} 40 -470 0 0 {name=Voltage_sources only_toplevel=true
value="
.param VDD = 1.8
.param VSS = 0
.param VCM = 1
.param IBIAS = 1u
"}
C {vsource.sym} 140 -190 0 0 {name=V2 value=\{VSS\} savecurrent=false}
C {gnd.sym} 60 -140 0 0 {name=l3 lab=GND
value=\{VSS\}}
C {lab_wire.sym} 60 -350 0 0 {name=p14 sig_type=std_logic lab=VDD

value=\{VSS\}}
C {lab_wire.sym} 750 -150 0 0 {name=p15 sig_type=std_logic lab=VSS


}
C {lab_wire.sym} 220 -120 0 0 {name=p16 sig_type=std_logic lab=VSS


}
C {res.sym} 460 -310 2 0 {name=R3
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 380 -310 2 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 300 -310 2 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 220 -310 2 0 {name=R4
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 140 -310 2 0 {name=R5
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 60 -310 2 0 {name=R6
value=50
footprint=1206
device=resistor
m=1}
