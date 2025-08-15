v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 100 -130 100 -110 {
lab=GND}
N 100 -230 100 -190 {
lab=VSS}
N 180 -130 180 -110 {
lab=GND}
N 100 -110 100 -90 {
lab=GND}
N 180 -230 180 -190 {
lab=VDD}
N 180 -110 180 -90 {
lab=GND}
N 260 -130 260 -110 {
lab=GND}
N 260 -230 260 -190 {
lab=Vref}
N 260 -110 260 -90 {
lab=GND}
N 870 -480 930 -480 {lab=Vout}
N 1080 -350 1080 -270 {
lab=VSS}
N 1080 -480 1080 -420 {
lab=Vout}
N 930 -480 1080 -480 {
lab=Vout}
N 510 -460 690 -460 {
lab=Vin}
N 1080 -420 1080 -410 {
lab=Vout}
N 640 -590 640 -510 {
lab=#net1}
N 930 -590 930 -480 {
lab=Vout}
N 790 -590 930 -590 {
lab=Vout}
N 580 -590 730 -590 {
lab=#net1}
N 540 -590 540 -520 {
lab=#net1}
N 540 -590 580 -590 {
lab=#net1}
N 640 -510 690 -510 {
lab=#net1}
N 340 -130 340 -110 {
lab=GND}
N 340 -230 340 -190 {
lab=Vin}
N 340 -110 340 -90 {
lab=GND}
C {sky130_fd_pr/corner.sym} 50 -400 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vsource.sym} 100 -160 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 100 -90 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 180 -160 0 0 {name=V2 value=\{VDD\} savecurrent=false}
C {devices/lab_wire.sym} 100 -230 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 180 -230 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 180 -90 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 260 -160 0 0 {name=V4 value=\{Vref\} savecurrent=false}
C {devices/lab_wire.sym} 260 -230 0 0 {name=p27 sig_type=std_logic lab=Vref}
C {devices/gnd.sym} 260 -90 0 0 {name=l7 lab=GND}
C {devices/launcher.sym} 150 -520 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 150 -590 0 0 {name=h3
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {capa.sym} 540 -490 0 0 {name=C2
m=1
value=10G
footprint=1206
device="ceramic capacitor"}
C {ind.sym} 760 -590 1 0 {name=L4
m=1
value=10G
footprint=1206
device=inductor}
C {lab_pin.sym} 760 -400 2 1 {name=p7 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 760 -380 2 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 760 -360 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 510 -460 2 1 {name=p10 sig_type=std_logic lab=Vin}
C {capa.sym} 1080 -380 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1080 -270 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {noconn.sym} 800 -420 2 0 {name=l1}
C {lab_pin.sym} 1080 -480 0 1 {name=p2 sig_type=std_logic lab=Vout}
C {simulator_commands.sym} 220 -400 0 0 {name=COMMANDS
simulator="ngspice"
only_toplevel="false" 
value="
.param VDD=1.8
.param Vref=1.2
.save

* Operation point of the folded cascode core

*nfet 

+ @m.x1.x2.xm1.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.x2.xm1.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.x2.xm1.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.x2.xm1.msky130_fd_pr__nfet_01v8[id]

+ @m.x1.x2.xm2.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.x2.xm2.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.x2.xm2.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.x2.xm2.msky130_fd_pr__nfet_01v8[id]

+ @m.x1.x2.xm7.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.x2.xm7.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.x2.xm7.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.x2.xm7.msky130_fd_pr__nfet_01v8[id]

+ @m.x1.x2.xm8.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.x2.xm8.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.x2.xm8.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.x2.xm8.msky130_fd_pr__nfet_01v8[id]

+ @m.x1.x2.xm9.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.x2.xm9.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.x2.xm9.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.x2.xm9.msky130_fd_pr__nfet_01v8[id]

+ @m.x1.x2.xm10.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.x2.xm10.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.x2.xm10.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.x2.xm10.msky130_fd_pr__nfet_01v8[id]

+ @m.x1.x2.xm11.msky130_fd_pr__nfet_01v8[gm]
+ v(@m.x1.x2.xm11.msky130_fd_pr__nfet_01v8[vth])
+ @m.x1.x2.xm11.msky130_fd_pr__nfet_01v8[gds]
+ @m.x1.x2.xm11.msky130_fd_pr__nfet_01v8[id]

*pfet

+ @m.x1.x2.xm3.msky130_fd_pr__pfet_01v8_lvt[gm]
+ v(@m.x1.x2.xm3.msky130_fd_pr__pfet_01v8_lvt[vth])
+ @m.x1.x2.xm3.msky130_fd_pr__pfet_01v8_lvt[gds]
+ @m.x1.x2.xm3.msky130_fd_pr__pfet_01v8_lvt[id]

+ @m.x1.x2.xm4.msky130_fd_pr__pfet_01v8_lvt[gm]
+ v(@m.x1.x2.xm4.msky130_fd_pr__pfet_01v8_lvt[vth])
+ @m.x1.x2.xm4.msky130_fd_pr__pfet_01v8_lvt[gds]
+ @m.x1.x2.xm4.msky130_fd_pr__pfet_01v8_lvt[id]

+ @m.x1.x2.xm5.msky130_fd_pr__pfet_01v8_lvt[gm]
+ v(@m.x1.x2.xm5.msky130_fd_pr__pfet_01v8_lvt[vth])
+ @m.x1.x2.xm5.msky130_fd_pr__pfet_01v8_lvt[gds]
+ @m.x1.x2.xm5.msky130_fd_pr__pfet_01v8_lvt[id]

+ @m.x1.x2.xm6.msky130_fd_pr__pfet_01v8_lvt[gm]
+ v(@m.x1.x2.xm6.msky130_fd_pr__pfet_01v8_lvt[vth])
+ @m.x1.x2.xm6.msky130_fd_pr__pfet_01v8_lvt[gds]
+ @m.x1.x2.xm6.msky130_fd_pr__pfet_01v8_lvt[id]

* Operation point of the folded cascode bias


+ abstol=1e-14 savecurrents
.control
    save all
    op
    remzerovec
    write folded_cascode_cmrr.raw
    set appendwrite

    * run ac simulation
    ac dec 20 1 100e7

    * measure parameters
    let vout_mag = db(abs(v(Vout)))
    let vout_phase = cph(v(Vout)) * 180/pi

    meas ac PSR find vout_mag at=1e2
    
    plot vout_mag

    write folded_cascode_cmrr.raw
.endc
"}
C {devices/vsource.sym} 340 -160 0 0 {name=V1 value="dc \{Vref\} ac 1" savecurrent=false}
C {devices/lab_wire.sym} 340 -230 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {devices/gnd.sym} 340 -90 0 0 {name=l2 lab=GND}
C {/foss/designs/chipathon_2025/designs/sky130/error_amplifier/xschem/error_amplifier.sym} 780 -480 0 0 {name=x1}
