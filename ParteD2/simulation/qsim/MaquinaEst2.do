onerror {quit -f}
vlib work
vlog -work work MaquinaEst2.vo
vlog -work work MaquinaEst2.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MaquinaEst2_vlg_vec_tst
vcd file -direction MaquinaEst2.msim.vcd
vcd add -internal MaquinaEst2_vlg_vec_tst/*
vcd add -internal MaquinaEst2_vlg_vec_tst/i1/*
add wave /*
run -all
