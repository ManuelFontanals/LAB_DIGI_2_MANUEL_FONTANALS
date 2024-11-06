onerror {quit -f}
vlib work
vlog -work work MaquinaEstado.vo
vlog -work work MaquinaEstado.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MaquinaEstado_vlg_vec_tst
vcd file -direction MaquinaEstado.msim.vcd
vcd add -internal MaquinaEstado_vlg_vec_tst/*
vcd add -internal MaquinaEstado_vlg_vec_tst/i1/*
add wave /*
run -all
