v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 710 -570 {}
P 4 1 710 -590 {}
N 110 -350 110 -310 {
lab=GND}
N 110 -450 110 -410 {
lab=VSS}
N 190 -350 190 -310 {
lab=GND}
N 190 -450 190 -410 {
lab=VDD}
N 270 -350 270 -310 {
lab=GND}
N 270 -450 270 -410 {
lab=Vref}
N 670 -590 700 -590 {lab=VbiasP2}
N 670 -570 700 -570 {lab=VbiasN2}
N 670 -550 700 -550 {lab=VbiasN1}
C {devices/vsource.sym} 110 -380 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 110 -310 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 190 -380 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/lab_wire.sym} 110 -450 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 190 -450 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 190 -310 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 270 -380 0 0 {name=V4 value=1 savecurrent=false}
C {devices/lab_wire.sym} 270 -450 0 0 {name=p14 sig_type=std_logic lab=Vref}
C {devices/gnd.sym} 270 -310 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 430 -590 0 0 {name=p1 sig_type=std_logic lab=Vref}
C {devices/lab_pin.sym} 430 -570 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 430 -550 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 60 -820 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/pdks/gf180mcuC/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuC/libs.tech/ngspice/sm141064.ngspice typical
"}
C {devices/launcher.sym} 160 -700 0 0 {name=h1
descr="Save & Netlist & sim" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/code_shown.sym} 850 -690 0 0 {name=s1 only_toplevel=false value="
.control
save all
op

save V(VbiasP2)
print V(VbiasP2)

save V(VbiasN2)
print V(VbiasN2)

save V(VbiasN1)
print V(VbiasN1)

write error_amplifier_bias_bradly_OP.sch
.endc
"
}
C {devices/noconn.sym} 700 -590 0 1 {name=l1}
C {devices/noconn.sym} 700 -570 0 1 {name=l2}
C {devices/noconn.sym} 700 -550 0 1 {name=l6}
C {devices/lab_pin.sym} 690 -590 0 0 {name=p4 sig_type=std_logic lab=VbiasP2}
C {devices/lab_pin.sym} 690 -570 0 0 {name=p5 sig_type=std_logic lab=VbiasN2}
C {devices/lab_pin.sym} 690 -550 0 0 {name=p6 sig_type=std_logic lab=VbiasN1}
C {/foss/designs/workarea/error_amplifier_bias_bradly/xschem/error_amplifier_bias_bradly.sym} 550 -570 0 0 {name=x1}
C {launcher.sym} 160 -650 0 0 {name=h2
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
