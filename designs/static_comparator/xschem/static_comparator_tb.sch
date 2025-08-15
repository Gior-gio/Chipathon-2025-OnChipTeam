v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 770 -320 770 -310 {lab=#net1}
N 770 -250 770 -210 {lab=IBIAS}
N 840 -240 840 -230 {lab=GND}
N 840 -330 840 -290 {lab=#net2}
N 770 -330 770 -320 {lab=#net1}
N 440 -370 440 -330 {lab=VDD}
N 470 -370 470 -330 {lab=IBIAS}
N 550 -270 630 -270 {lab=Vout}
N 630 -270 630 -230 {lab=Vout}
N 630 -170 630 -130 {lab=GND}
N 170 -70 170 -50 {lab=GND}
N 170 -170 220 -170 {lab=Vin}
N 200 -250 200 -190 {lab=Vin}
N 200 -290 200 -250 {lab=Vin}
N 200 -290 380 -290 {lab=Vin}
N 170 -170 170 -130 {lab=Vin}
N 200 -190 200 -170 {lab=Vin}
N 280 -170 340 -170 {lab=Vx}
N 300 -180 300 -170 {lab=Vx}
N 300 -250 300 -240 {lab=Vn}
N 300 -250 380 -250 {lab=Vn}
N 460 -220 460 -210 {lab=GND}
N 400 -170 460 -170 {lab=Vy}
N 520 -170 550 -170 {lab=Vz}
N 550 -170 550 -150 {lab=Vz}
N 550 -90 550 -60 {lab=GND}
N 590 -100 600 -100 {lab=GND}
N 600 -100 600 -80 {lab=GND}
N 550 -80 600 -80 {lab=GND}
N 590 -140 600 -140 {lab=Vout}
N 600 -270 600 -140 {lab=Vout}
N 770 -410 770 -390 {lab=VDD}
N 840 -410 840 -390 {lab=VDD}
C {gf180/static_comparator/xschem/static_comparator.sym} 160 -220 0 0 {name=x1}
C {isource.sym} 770 -280 0 0 {name=I0 value=1u
}
C {vsource.sym} 840 -270 0 0 {name=V1 value=VDD savecurrent=false}
C {vsource.sym} 170 -100 0 0 {name=V2 value=\{Vin_CM\}}
C {vsource.sym} 300 -210 0 0 {name=V3 value="AC 1" savecurrent=false}
C {capa.sym} 250 -170 3 0 {name=C1
m=1
value=10G
footprint=1206
device="ceramic capacitor"}
C {ind.sym} 370 -170 1 0 {name=L2
m=1
value=10G
footprint=1206
device=inductor}
C {vcvs.sym} 550 -120 0 1 {name=E1 value=1}
C {capa.sym} 630 -200 0 0 {name=C2
m=1
value=350f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 840 -230 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 770 -210 1 0 {name=p1 sig_type=std_logic lab=IBIAS}
C {lab_wire.sym} 840 -410 2 0 {name=p2 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 770 -410 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 440 -370 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 470 -370 2 0 {name=p5 sig_type=std_logic lab=IBIAS}
C {gnd.sym} 630 -130 0 0 {name=l1 lab=GND}
C {gnd.sym} 460 -210 0 0 {name=l3 lab=GND}
C {gnd.sym} 170 -50 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 170 -170 0 0 {name=p6 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 300 -250 0 0 {name=p7 sig_type=std_logic lab=Vn}
C {vsource.sym} 490 -170 1 0 {name=V4 value=vy savecurrent=false}
C {lab_wire.sym} 310 -170 2 0 {name=p8 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 420 -170 2 0 {name=p9 sig_type=std_logic lab=Vy}
C {gnd.sym} 550 -60 0 0 {name=l6 lab=GND}
C {simulator_commands.sym} 10 -370 0 0 {name="COMMANDS"
simulator="ngspice"
only_toplevel="false" 
value="

* --- Include PDK and Model Files ---
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical

* --- Define Parameters for the Simulation ---
.param VDD = 1.8
.param VSS = 0
.param Vin_CM = 1
.param Vout_CM = 0.9
.param Vy = (Vout_CM - Vin_CM)
.param load_cap = 350*1e-15 

* --- Simulation Commands and Analysis ---
 

*+ abstol=1e-14 savecurrents
.control
    save all 
    
** OP simulation
op

** All OP parameters

let #####_M1_nmos_input_##### = 0 
let id_M1 = @m.x1.xm1.m0[id]
let gm_M1 = @m.x1.xm1.m0[gm]
let ro_M1 = 1/@m.x1.xm1.m0[gds]
let Vsg_M1 = @m.x1.xm1.m0[vgs]
let Vsd_M1 = @m.x1.xm1.m0[vds]
let Vbs_M1 = -@m.x1.xm1.m0[vbs]
let Vdsat_M1 = @m.x1.xm1.m0[vdsat]
let Vth_M1 = @m.x1.xm1.m0[vth]
let ao_M1 = gm_M1*ro_M1
let gmid_M1 = gm_M1/id_M1
let fT_M1 = gm_M1/(6.283185*@m.x1.xm1.m0[cgg])
print #####_M1_nmos_input_##### id_M1 gm_M1 ro_M1 Vsg_M1 Vsd_M1 Vbs_M1 Vdsat_M1 Vth_M1 ao_M1 gmid_M1 fT_M1 

let #####_M2_nmos_current_##### = 0 
let id_M2 = @m.x1.xm2.m0[id]
let gm_M2 = @m.x1.xm2.m0[gm]
let ro_M2 = 1/@m.x1.xm2.m0[gds]
let Vsg_M2 = @m.x1.xm2.m0[vgs]
let Vsd_M2 = @m.x1.xm2.m0[vds]
let Vbs_M2 = -@m.x1.xm2.m0[vbs]
let Vdsat_M2 = @m.x1.xm2.m0[vdsat]
let Vth_M2 = @m.x1.xm2.m0[vth]
let ao_M2 = gm_M2*ro_M2
let gmid_M2 = gm_M2/id_M2
let fT_M2 = gm_M2/(6.283185*@m.x1.xm2.m0[cgg])
print #####_M2_nmos_current_##### id_M2 gm_M2 ro_M2 Vsg_M2 Vsd_M2 Vbs_M2 Vdsat_M2 Vth_M2 ao_M2 gmid_M2 fT_M2 

let #####_M3_pmos_current_top_##### = 0 
let id_M3 = @m.x1.xm3.m0[id]
let gm_M3 = @m.x1.xm3.m0[gm]
let ro_M3 = 1/@m.x1.xm3.m0[gds]
let Vsg_M3 = @m.x1.xm3.m0[vgs]
let Vsd_M3 = @m.x1.xm3.m0[vds]
let Vbs_M3 = -@m.x1.xm3.m0[vbs]
let Vdsat_M3 = @m.x1.xm3.m0[vdsat]
let Vth_M3 = @m.x1.xm3.m0[vth]
let ao_M3 = gm_M3*ro_M3
let gmid_M3 = gm_M3/id_M3
let fT_M3 = gm_M3/(6.283185*@m.x1.xm3.m0[cgg])
print #####_M3_pmos_current_top_##### id_M3 gm_M3 ro_M3 Vsg_M3 Vsd_M3 Vbs_M3 Vdsat_M3 Vth_M3 ao_M3 gmid_M3 fT_M3

let #####_M4_pmos_top_##### = 0 
let id_M4 = @m.x1.xm4.m0[id]
let gm_M4 = @m.x1.xm4.m0[gm]
let ro_M4 = 1/@m.x1.xm4.m0[gds]
let Vsg_M4 = @m.x1.xm4.m0[vgs]
let Vsd_M4 = @m.x1.xm4.m0[vds]
let Vbs_M4 = -@m.x1.xm4.m0[vbs]
let Vdsat_M4 = @m.x1.xm4.m0[vdsat]
let Vth_M4 = @m.x1.xm4.m0[vth]
let ao_M4 = gm_M4*ro_M4
let gmid_M4 = gm_M4/id_M4
let fT_M4 = gm_M4/(6.283185*@m.x1.xm4.m0[cgg])
print #####_M4_pmos_top_##### id_M4 gm_M4 ro_M4 Vsg_M4 Vsd_M4 Vbs_M4 Vdsat_M4 Vth_M4 ao_M4 gmid_M4 fT_M4

let #####_M5_pmos_vp_##### = 0 
let id_M5 = @m.x1.xm5.m0[id]
let gm_M5 = @m.x1.xm5.m0[gm]
let ro_M5 = 1/@m.x1.xm5.m0[gds]
let Vsg_M5 = @m.x1.xm5.m0[vgs]
let Vsd_M5 = @m.x1.xm5.m0[vds]
let Vbs_M5 = -@m.x1.xm5.m0[vbs]
let Vdsat_M5 = @m.x1.xm5.m0[vdsat]
let Vth_M5 = @m.x1.xm5.m0[vth]
let ao_M5 = gm_M5*ro_M5
let gmid_M5 = gm_M5/id_M5
let fT_M5 = gm_M5/(6.283185*@m.x1.xm5.m0[cgg])
print #####_M5_pmos_vp_##### id_M5 gm_M5 ro_M5 Vsg_M5 Vsd_M5 Vbs_M5 Vdsat_M5 Vth_M5 ao_M5 gmid_M5 fT_M5

let #####_M6_pmos_vn_##### = 0 
let id_M6 = @m.x1.xm6.m0[id]
let gm_M6 = @m.x1.xm6.m0[gm]
let ro_M6 = 1/@m.x1.xm6.m0[gds]
let Vsg_M6 = @m.x1.xm6.m0[vgs]
let Vsd_M6 = @m.x1.xm6.m0[vds]
let Vbs_M6 = -@m.x1.xm6.m0[vbs]
let Vdsat_M6 = @m.x1.xm6.m0[vdsat]
let Vth_M6 = @m.x1.xm6.m0[vth]
let ao_M6 = gm_M6*ro_M6
let gmid_M6 = gm_M6/id_M6
let fT_M6 = gm_M6/(6.283185*@m.x1.xm6.m0[cgg])
print #####_M6_pmos_vn_##### id_M6 gm_M6 ro_M6 Vsg_M6 Vsd_M6 Vbs_M6 Vdsat_M6 Vth_M6 ao_M6 gmid_M6 fT_M6

let #####_M7_nmos_vp_##### = 0 
let id_M7 = @m.x1.xm7.m0[id]
let gm_M7 = @m.x1.xm7.m0[gm]
let ro_M7 = 1/@m.x1.xm7.m0[gds]
let Vgs_M7 = @m.x1.xm7.m0[vgs]
let Vds_M7 = @m.x1.xm7.m0[vds]
let Vsb_M7 = -@m.x1.xm7.m0[vbs]
let Vdsat_M7 = @m.x1.xm7.m0[vdsat]
let Vth_M7 = @m.x1.xm7.m0[vth]
let ao_M7 = gm_M7*ro_M7
let gmid_M7 = gm_M7/id_M7
let fT_M7 = gm_M7/(6.283185*@m.x1.xm7.m0[cgg])
print #####_M7_nmos_vp_##### id_M7 gm_M7 ro_M7 Vgs_M7 Vds_M7 Vsb_M7 Vdsat_M7 Vth_M7 ao_M7 gmid_M7 fT_M7

let #####_M8_nmos_vn_##### = 0 
let id_M8 = @m.x1.xm8.m0[id]
let gm_M8 = @m.x1.xm8.m0[gm]
let ro_M8 = 1/@m.x1.xm8.m0[gds]
let Vgs_M8 = @m.x1.xm8.m0[vgs]
let Vds_M8 = @m.x1.xm8.m0[vds]
let Vsb_M8 = -@m.x1.xm8.m0[vbs]
let Vdsat_M8 = @m.x1.xm8.m0[vdsat]
let Vth_M8 = @m.x1.xm8.m0[vth]
let ao_M8 = gm_M8*ro_M8
let gmid_M8 = gm_M8/id_M8
let fT_M8 = gm_M8/(6.283185*@m.x1.xm8.m0[cgg])
print #####_M8_nmos_vn_##### id_M8 gm_M8 ro_M8 Vgs_M8 Vds_M8 Vsb_M8 Vdsat_M8 Vth_M8 ao_M8 gmid_M8 fT_M8

let #####_M9_pmos_bottom_##### = 0 
let id_M9 = @m.x1.xm9.m0[id]
let gm_M9 = @m.x1.xm9.m0[gm]
let ro_M9 = 1/@m.x1.xm9.m0[gds]
let Vgs_M9 = @m.x1.xm9.m0[vgs]
let Vds_M9 = @m.x1.xm9.m0[vds]
let Vsb_M9 = -@m.x1.xm9.m0[vbs]
let Vdsat_M9 = @m.x1.xm9.m0[vdsat]
let Vth_M9 = @m.x1.xm9.m0[vth]
let ao_M9 = gm_M9*ro_M9
let gmid_M9 = gm_M9/id_M9
let fT_M9 = gm_M9/(6.283185*@m.x1.xm9.m0[cgg])
print #####_M9_pmos_bottom_##### id_M9 gm_M9 ro_M9 Vgs_M9 Vds_M9 Vsb_M9 Vdsat_M9 Vth_M9 ao_M9 gmid_M9 fT_M9

let #####_M10_pmos_bottom_##### = 0 
let id_M10 = @m.x1.xm10.m0[id]
let gm_M10 = @m.x1.xm10.m0[gm]
let ro_M10 = 1/@m.x1.xm10.m0[gds]
let Vgs_M10 = @m.x1.xm10.m0[vgs]
let Vds_M10 = @m.x1.xm10.m0[vds]
let Vsb_M10 = @m.x1.xm10.m0[vbs]
let Vdsat_M10 = @m.x1.xm10.m0[vdsat]
let Vth_M10 = @m.x1.xm10.m0[vth]
let ao_M10 = gm_M10*ro_M10
let gmid_M10 = gm_M10/id_M10
let fT_M10 = gm_M10/(6.283185*@m.x1.xm10.m0[cgg])
print #####_M10_pmos_bottom_##### id_M10 gm_M10 ro_M10 Vgs_M10 Vds_M10 Vsb_M10 Vdsat_M10 Vth_M10 ao_M10 gmid_M10 fT_M10

let #####_M11_nmos_voutn_##### = 0 
let id_M11 = @m.x1.xm11.m0[id]
let gm_M11 = @m.x1.xm11.m0[gm]
let ro_M11 = 1/@m.x1.xm11.m0[gds]
let Vsg_M11 = @m.x1.xm11.m0[vgs]
let Vsd_M11 = @m.x1.xm11.m0[vds]
let Vbs_M11 = -@m.x1.xm11.m0[vbs]
let Vdsat_M11 = @m.x1.xm11.m0[vdsat]
let Vth_M11 = @m.x1.xm11.m0[vth]
let ao_M11 = gm_M11*ro_M11
let gmid_M11 = gm_M11/id_M11
let fT_M11 = gm_M11/(6.283185*@m.x1.xm11.m0[cgg])
print #####_M11_nmos_voutn_##### id_M11 gm_M11 ro_M11 Vsg_M11 Vsd_M11 Vbs_M11 Vdsat_M11 Vth_M11 ao_M11 gmid_M11 fT_M11

let #####_M12_nmos_voutp_##### = 0 
let id_M12 = @m.x1.xm12.m0[id]
let gm_M12 = @m.x1.xm12.m0[gm]
let ro_M12 = 1/@m.x1.xm12.m0[gds]
let Vsg_M12 = @m.x1.xm12.m0[vgs]
let Vsd_M12 = @m.x1.xm12.m0[vds]
let Vbs_M12 = -@m.x1.xm12.m0[vbs]
let Vdsat_M12 = @m.x1.xm12.m0[vdsat]
let Vth_M12 = @m.x1.xm12.m0[vth]
let ao_M12 = gm_M12*ro_M12
let gmid_M12 = gm_M12/id_M12
let fT_M12 = gm_M12/(6.283185*@m.x1.xm12.m0[cgg])
print #####_M12_nmos_voutp_##### id_M12 gm_M12 ro_M12 Vsg_M12 Vsd_M12 Vbs_M12 Vdsat_M12 Vth_M12 ao_M12 gmid_M12 fT_M12


let #####_potencia_##### = 0
let Pwr = (id_M1 + id_M2 + id_M4 + id_M9 + id_M10)*1.8
print #####_potencia_##### Pwr

** Custom output
let #####_Custom_output_##### = 0

print #####_Custom_output_##### Av BW BW_2 Rout gm_M1 ro_M1 gm_M6 ro_M6 ro_M4 gm_M8 ro_M8 ro_M10


    remzerovec
    * write static_comparator_tb.raw
    set appendwrite

    * run ac simulation
    ac dec 20 1 100e7

    * measure parameters
    let vout_mag_VV = abs(v(Vout))
    let vout_mag = db(abs(v(Vout)))
    let vout_phase = cph(v(Vout)) * 180/pi
    let gm = (-1)*db(abs(v(Vout)))

    meas ac A0 find vout_mag at=1
    meas ac UGB when vout_mag=0 fall=1
    meas ac PM find vout_phase when vout_mag=0
    meas ac GM find gm when vout_phase=0    

    let A0_p1 = A0 - 3
    meas ac BW when vout_mag=A0_p1
    
    *plot vout_mag
    *plot vout_phase

    write static_comparator_tb.raw
.endc
"}
C {devices/launcher.sym} 80 -450 0 0 {name=h3
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {lab_wire.sym} 550 -170 2 0 {name=p10 sig_type=std_logic lab=Vz}
C {lab_wire.sym} 630 -270 2 0 {name=p11 sig_type=std_logic lab=Vout}
C {launcher.sym} 80 -490 0 0 {name=h2
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {res.sym} 840 -360 2 0 {name=R3
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 770 -360 2 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
