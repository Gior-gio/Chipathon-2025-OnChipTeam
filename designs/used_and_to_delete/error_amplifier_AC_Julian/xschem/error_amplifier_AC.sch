v {xschem version=3.4.7 file_version=1.2}
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
C {devices/vsource.sym} 110 -150 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 110 -80 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 190 -150 0 0 {name=V2 value=\{VDD\} savecurrent=false}
C {devices/lab_wire.sym} 110 -220 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 190 -220 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 190 -80 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 270 -150 0 0 {name=V4 value=\{Vref\} savecurrent=false}
C {devices/lab_wire.sym} 270 -220 0 0 {name=p27 sig_type=std_logic lab=Vref}
C {devices/gnd.sym} 270 -80 0 0 {name=l7 lab=GND}
C {gf180/error_amplifier/xschem/error_amplifier.sym} 760 -540 0 0 {name=x1}
C {devices/lab_wire.sym} 1060 -540 0 1 {name=p16 sig_type=std_logic lab=Vout}
C {devices/capa.sym} 1060 -440 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1060 -330 0 1 {name=p1 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 90 -710 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/pdks/gf180mcuC/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuC/libs.tech/ngspice/sm141064.ngspice ff
"}
C {devices/code_shown.sym} 1180 -580 0 0 {name=s1 only_toplevel=false value="
.control
.param VDD=1.8
.param Vref=1.2
save all

    * run ac simulation
    ac dec 20 1 100e7

    * measure parameters
    let vout_mag = db(abs(v(Vout)))
    let vout_phase = cph(v(Vout)) * 180/pi + 360
    let gm = (-1)*db(abs(v(Vout)))

    meas ac A0 find vout_mag at=1
    meas ac UGB when vout_mag=0 fall=1
    meas ac PM find vout_phase when vout_mag=0
    meas ac GM find gm when vout_phase=0

    let A0_p1 = A0 - 3
    meas ac BW when vout_mag=A0_p1
    
    plot vout_mag vout_phase

.endc
"
}
C {devices/launcher.sym} 150 -610 0 0 {name=h1
descr="Save & Netlist & sim" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/lab_wire.sym} 670 -570 0 0 {name=p2 sig_type=std_logic lab=V-}
C {devices/lab_wire.sym} 450 -330 0 0 {name=p4 sig_type=std_logic lab=Vref}
C {devices/capa.sym} 560 -330 1 0 {name=C1
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/ind.sym} 740 -330 1 0 {name=L2
m=1
value=1
footprint=1206
device=inductor}
C {devices/vsource.sym} 630 -410 0 0 {name=V1 value="AC 1"}
C {devices/noconn.sym} 780 -480 0 1 {name=l1}
C {devices/lab_wire.sym} 630 -480 0 0 {name=p3 sig_type=std_logic lab=V-}
C {devices/lab_wire.sym} 740 -460 0 0 {name=p5 sig_type=std_logic lab=Vref}
C {devices/lab_wire.sym} 740 -440 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 740 -420 0 0 {name=p7 sig_type=std_logic lab=VSS}
