onerror {quit -f}
vlib work
vlog -work work Sumador4Bit.vo
vlog -work work Sumador4Bit.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.SumadorDefBloq_vlg_vec_tst
vcd file -direction Sumador4Bit.msim.vcd
vcd add -internal SumadorDefBloq_vlg_vec_tst/*
vcd add -internal SumadorDefBloq_vlg_vec_tst/i1/*
add wave /*
run -all
