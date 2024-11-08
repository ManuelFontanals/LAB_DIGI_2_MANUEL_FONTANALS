transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Manu/Desktop/facu/T y DD II/LAB/ParteB/RestadorCompleto.vhd}
vcom -93 -work work {C:/Users/Manu/Desktop/facu/T y DD II/LAB/ParteB/D_FF.vhd}

vcom -93 -work work {C:/Users/Manu/Desktop/facu/T y DD II/LAB/ParteB/SIMResComp.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  SIMResComp

add wave *
view structure
view signals
run 260 ns
