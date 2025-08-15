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
N 630 -330 710 -330 {
lab=#net1}
N 630 -380 630 -330 {
lab=#net1}
N 490 -330 530 -330 {
lab=Vref}
N 590 -330 630 -330 {
lab=#net1}
N 450 -330 490 -330 {
lab=Vref}
N 910 -540 910 -330 {
lab=Vout}
N 770 -330 910 -330 {
lab=Vout}
N 1060 -410 1060 -330 {
lab=VSS}
N 1060 -540 1060 -480 {
lab=Vout}
N 910 -540 1060 -540 {
lab=Vout}
N 490 -520 490 -330 {
lab=Vref}
N 490 -520 670 -520 {
lab=Vref}
N 630 -480 630 -440 {
lab=V-}
N 1060 -480 1060 -470 {
lab=Vout}
C {simulator_commands.sym} 160 -430 0 0 {name="COMMANDS"
simulator="ngspice"
only_toplevel="false" 
value="
.save

.control
    save all

    * run ac simulation
    ac dec 20 1 100e7

    * measure parameters
    let vout_mag = db(abs(v(Vout)))
    let vout_phase = cph(v(Vout)) * 180/pi + 360
    let gm = (-1)*db(abs(v(Vout)))

    meas ac A0 find vout_mag at=1e2
    meas ac UGB when vout_mag=0 fall=1
    meas ac PM find vout_phase when vout_mag=0
    meas ac GM find gm when vout_phase=0

    let A0_p1 = A0 - 3
    meas ac BW when vout_mag=A0_p1
    
    set wr_singlescale
    echo $&A0 $&UGB $&PM $&GM > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data

.endc
"}
C {devices/vsource.sym} 110 -150 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 110 -80 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 190 -150 0 0 {name=V2 value=CACE\{VDD\} savecurrent=false}
C {devices/lab_wire.sym} 110 -220 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 190 -220 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 190 -80 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 270 -150 0 0 {name=V4 value=CACE\{Vref\} savecurrent=false}
C {devices/lab_wire.sym} 270 -220 0 0 {name=p27 sig_type=std_logic lab=Vref}
C {devices/gnd.sym} 270 -80 0 0 {name=l7 lab=GND}
C {vsource.sym} 630 -410 0 0 {name=V5 value="AC 1" savecurrent=false}
C {capa.sym} 560 -330 1 0 {name=C2
m=1
value=10G
footprint=1206
device="ceramic capacitor"
vhdl_ignore=true}
C {ind.sym} 740 -330 1 0 {name=L4
m=1
value=10G
footprint=1206
device=inductor}
C {lab_pin.sym} 740 -460 2 1 {name=p7 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 740 -440 2 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 740 -420 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 450 -330 2 1 {name=p10 sig_type=std_logic lab=Vref}
C {/foss/designs/chipathon_2025/designs/folded_cascode/xschem/folded_cascode.sym} 760 -540 0 0 {name=x1}
C {capa.sym} 1060 -440 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"
vhdl_ignore=true}
C {lab_pin.sym} 1060 -330 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {noconn.sym} 780 -480 2 0 {name=l1}
C {lab_pin.sym} 1060 -540 0 1 {name=p2 sig_type=std_logic lab=Vout}
C {lab_pin.sym} 630 -480 2 1 {name=p3 sig_type=std_logic lab=V-}
C {lab_pin.sym} 670 -570 2 1 {name=p4 sig_type=std_logic lab=V-}
C {devices/code_shown.sym} 480 -250 0 0 {name=SETUP
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
