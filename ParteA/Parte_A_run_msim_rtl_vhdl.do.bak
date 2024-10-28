transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Manu/Desktop/facu/T y DD II/LAB/ParteA/Parte_A.vhd}

vcom -93 -work work {C:/Users/Manu/Desktop/facu/T y DD II/LAB/ParteA/Parte_A_SIM.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  Pate_A_SIM

add wave *
view structure
view signals
run -all
