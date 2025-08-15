v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 220 -140 220 -100 {
lab=GND}
N 220 -240 220 -200 {
lab=VSS}
N 300 -140 300 -100 {
lab=GND}
N 300 -240 300 -200 {
lab=VDD}
N 380 -140 380 -100 {
lab=GND}
N 380 -240 380 -200 {
lab=Vref}
N 880 -510 940 -510 {lab=Vout}
N 1090 -380 1090 -300 {
lab=VSS}
N 1090 -510 1090 -440 {
lab=Vout}
N 940 -510 1090 -510 {
lab=Vout}
N 520 -490 700 -490 {
lab=Vin}
N 590 -540 700 -540 {
lab=Vout}
N 590 -620 590 -540 {
lab=Vout}
N 590 -620 940 -620 {
lab=Vout}
N 940 -620 940 -510 {
lab=Vout}
N 460 -240 460 -200 {
lab=Vin}
N 460 -140 460 -100 {
lab=GND}
C {simulator_commands.sym} 320 -410 0 0 {name="COMMANDS"
simulator="ngspice"
only_toplevel="false"
value="
.save
.control
    save all

    * run dc simulation
    dc V1 0 1.8 0.001

    * measure parameters
    let dVout = deriv(v(Vout))    
    
    meas dc ICMmin when DVout=0.95 cross=1
    meas dc ICMmax when DVout=0.95 cross=last
    let ICMR = ICMmax - ICMmin

    set wr_singlescale
    echo $&ICMR $&ICMmin $&ICMmax > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
.endc
"}
C {devices/vsource.sym} 220 -170 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 220 -100 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 300 -170 0 0 {name=V2 value=CACE\{VDD\} savecurrent=false}
C {devices/lab_wire.sym} 220 -240 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 300 -240 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 300 -100 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 380 -170 0 0 {name=V4 value=CACE\{Vref\} savecurrent=false}
C {devices/lab_wire.sym} 380 -240 0 0 {name=p27 sig_type=std_logic lab=Vref}
C {devices/gnd.sym} 380 -100 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 770 -430 2 1 {name=p7 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 770 -410 2 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 770 -390 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 520 -490 2 1 {name=p10 sig_type=std_logic lab=Vin}
C {/foss/designs/chipathon_2025/designs/folded_cascode/xschem/folded_cascode.sym} 790 -510 0 0 {name=x1}
C {capa.sym} 1090 -410 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1090 -300 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {noconn.sym} 810 -450 2 0 {name=l1}
C {lab_pin.sym} 1090 -510 0 1 {name=p2 sig_type=std_logic lab=Vout}
C {devices/lab_wire.sym} 460 -240 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {devices/gnd.sym} 460 -100 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 460 -170 0 0 {name=V1 value=CACE\{Vref\} savecurrent=false}
C {devices/code_shown.sym} 540 -270 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false
value="
.lib CACE\{PDK_ROOT\}/CACE\{PDK\}/libs.tech/combined/sky130.lib.spice CACE\{corner\}

.include CACE\{DUT_path\}

.temp CACE\{temperature\}

.option SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]

* Flag unsafe operating conditions (exceeds models' specified limits)
.option warn=1
"}
