transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Manu/Desktop/facu/T y DD II/LAB/TESTParteC/Sumador4Bit.vhd}
vcom -93 -work work {C:/Users/Manu/Desktop/facu/T y DD II/LAB/TESTParteC/FF_D.vhd}
vcom -93 -work work {C:/Users/Manu/Desktop/facu/T y DD II/LAB/TESTParteC/SumadorDefBloq.vhd}
