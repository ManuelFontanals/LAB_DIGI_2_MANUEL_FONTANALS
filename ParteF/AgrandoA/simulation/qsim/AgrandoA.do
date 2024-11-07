onerror {quit -f}
vlib work
vlog -work work AgrandoA.vo
vlog -work work AgrandoA.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.AgrandoA_vlg_vec_tst
vcd file -direction AgrandoA.msim.vcd
vcd add -internal AgrandoA_vlg_vec_tst/*
vcd add -internal AgrandoA_vlg_vec_tst/i1/*
add wave /*
run -all
