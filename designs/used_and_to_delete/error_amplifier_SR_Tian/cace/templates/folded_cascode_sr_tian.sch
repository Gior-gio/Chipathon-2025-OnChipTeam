v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 110 -120 110 -100 {
lab=GND}
N 110 -220 110 -180 {
lab=VSS}
N 190 -120 190 -100 {
lab=GND}
N 110 -100 110 -80 {
lab=GND}
N 190 -220 190 -180 {
lab=VDD}
N 190 -100 190 -80 {
lab=GND}
N 270 -120 270 -100 {
lab=GND}
N 270 -220 270 -180 {
lab=Vref}
N 270 -100 270 -80 {
lab=GND}
N 850 -540 910 -540 {lab=Vout}
N 1060 -410 1060 -330 {
lab=VSS}
N 1060 -540 1060 -480 {
lab=Vout}
N 910 -540 1060 -540 {
lab=Vout}
N 490 -520 670 -520 {
lab=Vin}
N 1060 -480 1060 -470 {
lab=Vout}
N 560 -570 670 -570 {
lab=Vout}
N 560 -650 560 -570 {
lab=Vout}
N 560 -650 910 -650 {
lab=Vout}
N 910 -650 910 -540 {
lab=Vout}
N 350 -220 350 -180 {
lab=Vin}
N 350 -120 350 -100 {
lab=GND}
N 350 -100 350 -80 {
lab=GND}
C {simulator_commands.sym} 210 -390 0 0 {name="COMMANDS"
simulator="ngspice"
only_toplevel="false" 
value="
.save
.control
    save all

    * run ac simulation
    tran 25n 2m

    * measure parameters
    let dVout = deriv(Vout)
    meas tran SRplus MAX dVout
    meas tran SRminus MIN dVout

    meas tran Voutmax MAX Vout
    meas tran Voutmin MIN Vout
    let Output_swing = Voutmax-Voutmin

    set wr_singlescale 
    echo $&SRplus $&SRminus $&Voutmax $&Voutmin $&Output_swing > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
.endc
"
}
C {devices/vsource.sym} 110 -150 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 110 -80 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 190 -150 0 0 {name=V2 value=CACE\{VDD\} savecurrent=false}
C {devices/lab_wire.sym} 110 -220 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 190 -220 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 190 -80 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 270 -150 0 0 {name=V4 value=CACE\{Vref\} savecurrent=false}
C {devices/lab_wire.sym} 270 -220 0 0 {name=p27 sig_type=std_logic lab=Vref}
C {devices/gnd.sym} 270 -80 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 740 -460 2 1 {name=p7 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 740 -440 2 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 740 -420 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 490 -520 2 1 {name=p10 sig_type=std_logic lab=Vin}
C {/foss/designs/chipathon_2025/designs/folded_cascode/xschem/folded_cascode.sym} 760 -540 0 0 {name=x1}
C {capa.sym} 1060 -440 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1060 -330 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {noconn.sym} 780 -480 2 0 {name=l1}
C {lab_pin.sym} 1060 -540 0 1 {name=p2 sig_type=std_logic lab=Vout}
C {vsource.sym} 350 -150 0 0 {name=V3 value="pulse(CACE\{V1\} CACE\{V2\} CACE\{TD\} CACE\{TR\} CACE\{TF\} CACE\{PWM\} CACE\{PER\})" savecurrent=false

}
C {devices/lab_wire.sym} 350 -220 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {devices/gnd.sym} 350 -80 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} 660 -280 0 0 {name=SETUP
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
