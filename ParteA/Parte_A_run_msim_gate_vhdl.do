transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Parte_A_7_1200mv_85c_slow.vho}

vcom -93 -work work {C:/Users/Manu/Desktop/facu/T y DD II/LAB/ParteA/Parte_A_SIM.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /uut=Parte_A_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  Parte_A_SIM

add wave *
view structure
view signals
run -all
