onerror {quit -f}
vlib work
vlog -work work ConexionMasterSlave.vo
vlog -work work ConexionMasterSlave.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ConexionMasterSlave_vlg_vec_tst
vcd file -direction ConexionMasterSlave.msim.vcd
vcd add -internal ConexionMasterSlave_vlg_vec_tst/*
vcd add -internal ConexionMasterSlave_vlg_vec_tst/i1/*
add wave /*
run -all
