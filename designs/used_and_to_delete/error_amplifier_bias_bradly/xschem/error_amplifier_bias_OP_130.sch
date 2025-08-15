v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 800 -380 {}
N 220 -360 220 -320 {
lab=GND}
N 220 -460 220 -420 {
lab=VSS}
N 300 -360 300 -320 {
lab=GND}
N 300 -460 300 -420 {
lab=VDD}
N 380 -360 380 -320 {
lab=GND}
N 380 -460 380 -420 {
lab=Vref}
C {devices/vsource.sym} 220 -390 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 220 -320 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 300 -390 0 0 {name=V2 value=\{VDD\} savecurrent=false}
C {devices/lab_wire.sym} 220 -460 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 300 -460 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 300 -320 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 380 -390 0 0 {name=V4 value=\{Vref\} savecurrent=false}
C {devices/lab_wire.sym} 380 -460 0 0 {name=p14 sig_type=std_logic lab=Vref}
C {devices/gnd.sym} 380 -320 0 0 {name=l5 lab=GND}
C {/foss/pdks/volare/sky130/versions/0fe599b2afb6708d281543108caf8310912f54af/sky130A/libs.tech/xschem/sky130_fd_pr/corner.sym} 450 -630 0 0 {name=CORNER only_toplevel=true corner=tt}
C {simulator_commands.sym} 630 -630 0 0 {name=COMMANDS1
simulator="ngspice"
only_toplevel="false" 
value="
.param VDD=1.8
.param Vref=1.2
.save

*nfet

+ @m.x1.xm19.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.xm19.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.xm19.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.xm19.msky130_fd_pr__nfet_01v8[id]

+ @m.x1.xm20.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.xm20.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.xm20.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.xm20.msky130_fd_pr__nfet_01v8[id]

+ @m.x1.xm21.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.xm21.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.xm21.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.xm21.msky130_fd_pr__nfet_01v8[id]

+ @m.x1.xm22.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.xm22.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.xm22.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.xm22.msky130_fd_pr__nfet_01v8[id]

+ @m.x1.xm23.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.xm23.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.xm23.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.xm23.msky130_fd_pr__nfet_01v8[id]

+ @m.x1.xm24.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.xm24.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.xm24.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.xm24.msky130_fd_pr__nfet_01v8[id]

+ @m.x1.xm25.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.xm25.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.xm25.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.xm25.msky130_fd_pr__nfet_01v8[id]

+ @m.x1.xm26.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.xm26.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.xm26.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.xm26.msky130_fd_pr__nfet_01v8[id]

+ @m.x1.xm27.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.xm27.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.xm27.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.xm27.msky130_fd_pr__nfet_01v8[id]

+ @m.x1.xm28.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.xm28.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.xm28.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.xm28.msky130_fd_pr__nfet_01v8[id]

+ @m.x1.xm29.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.xm29.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.xm29.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.xm29.msky130_fd_pr__nfet_01v8[id]

+ @m.x1.xm30.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.xm30.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.xm30.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.xm30.msky130_fd_pr__nfet_01v8[id]

+ @m.x1.xm31.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.xm31.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.xm31.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.xm31.msky130_fd_pr__nfet_01v8[id]

*pfet

+ @m.x1.xm12.msky130_fd_pr__pfet_01v8_lvt[gm]
+ v(@m.x1.xm12.msky130_fd_pr__pfet_01v8_lvt[vth])
+ @m.x1.xm12.msky130_fd_pr__pfet_01v8_lvt[gds]
+ @m.x1.xm12.msky130_fd_pr__pfet_01v8_lvt[id]

+ @m.x1.xm13.msky130_fd_pr__pfet_01v8_lvt[gm]
+ v(@m.x1.xm13.msky130_fd_pr__pfet_01v8_lvt[vth])
+ @m.x1.xm13.msky130_fd_pr__pfet_01v8_lvt[gds]
+ @m.x1.xm13.msky130_fd_pr__pfet_01v8_lvt[id]

+ @m.x1.xm14.msky130_fd_pr__pfet_01v8_lvt[gm]
+ v(@m.x1.xm14.msky130_fd_pr__pfet_01v8_lvt[vth])
+ @m.x1.xm14.msky130_fd_pr__pfet_01v8_lvt[gds]
+ @m.x1.xm14.msky130_fd_pr__pfet_01v8_lvt[id]

+ @m.x1.xm15.msky130_fd_pr__pfet_01v8_lvt[gm]
+ v(@m.x1.xm15.msky130_fd_pr__pfet_01v8_lvt[vth])
+ @m.x1.xm15.msky130_fd_pr__pfet_01v8_lvt[gds]
+ @m.x1.xm15.msky130_fd_pr__pfet_01v8_lvt[id]

+ @m.x1.xm16.msky130_fd_pr__pfet_01v8_lvt[gm]
+ v(@m.x1.xm16.msky130_fd_pr__pfet_01v8_lvt[vth])
+ @m.x1.xm16.msky130_fd_pr__pfet_01v8_lvt[gds]
+ @m.x1.xm16.msky130_fd_pr__pfet_01v8_lvt[id]

+ @m.x1.xm17.msky130_fd_pr__pfet_01v8_lvt[gm]
+ v(@m.x1.xm17.msky130_fd_pr__pfet_01v8_lvt[vth])
+ @m.x1.xm17.msky130_fd_pr__pfet_01v8_lvt[gds]
+ @m.x1.xm17.msky130_fd_pr__pfet_01v8_lvt[id]

+ @m.x1.xm18.msky130_fd_pr__pfet_01v8_lvt[gm]
+ v(@m.x1.xm18.msky130_fd_pr__pfet_01v8_lvt[vth])
+ @m.x1.xm18.msky130_fd_pr__pfet_01v8_lvt[gds]
+ @m.x1.xm18.msky130_fd_pr__pfet_01v8_lvt[id]

.control
  save all
  op
  write folded_cascode_bias_OP.raw
* Obtener voltajes en los nodos
let VbiasP2_voltage = v(net3)
let VbiasN2_voltage = v(net2)
let VbiasN1_voltage = v(net1)

* Imprimir voltajes en la consola
print VbiasP2_voltage VbiasN2_voltage VbiasN1_voltage

.endc
"}
C {devices/launcher.sym} 205 -580 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 210 -660 0 0 {name=h3
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {lab_pin.sym} 520 -400 0 0 {name=p8 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 520 -380 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 520 -360 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {noconn.sym} 760 -400 2 0 {name=l1}
C {noconn.sym} 760 -380 2 0 {name=l2}
C {noconn.sym} 760 -360 2 0 {name=l6}
C {/foss/designs/chipathon_2025/designs/sky130/error_amplifier_bias_bradly/xschem/error_amplifier_bias_bradly.sym} 640 -380 0 0 {name=x1}
