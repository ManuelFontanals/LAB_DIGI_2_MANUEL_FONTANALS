transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {new_project_7_1200mv_85c_slow.vho}

vcom -93 -work work {C:/altera/13.0sp1/../../Users/Manu/Desktop/facu/T y DD II/LAB/new_project.vhd}
vcom -93 -work work {C:/altera/13.0sp1/../../Users/Manu/Desktop/facu/T y DD II/LAB/test_bench_A.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /uut=new_project_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  test_bench_A

add wave *
view structure
view signals
run -all
