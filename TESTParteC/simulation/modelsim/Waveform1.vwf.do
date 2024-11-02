vlog -work work C:/Users/Manu/Desktop/facu/T y DD II/LAB/TESTParteC/simulation/modelsim/Waveform1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Block1_vlg_vec_tst
onerror {resume}
add wave {Block1_vlg_vec_tst/i1/a1}
add wave {Block1_vlg_vec_tst/i1/a2}
add wave {Block1_vlg_vec_tst/i1/a3}
add wave {Block1_vlg_vec_tst/i1/a4}
add wave {Block1_vlg_vec_tst/i1/b1}
add wave {Block1_vlg_vec_tst/i1/b2}
add wave {Block1_vlg_vec_tst/i1/b3}
add wave {Block1_vlg_vec_tst/i1/b4}
add wave {Block1_vlg_vec_tst/i1/Cin1}
add wave {Block1_vlg_vec_tst/i1/Cin2}
add wave {Block1_vlg_vec_tst/i1/Cin3}
add wave {Block1_vlg_vec_tst/i1/Cin4}
add wave {Block1_vlg_vec_tst/i1/clk}
add wave {Block1_vlg_vec_tst/i1/Cout1}
add wave {Block1_vlg_vec_tst/i1/Cout2}
add wave {Block1_vlg_vec_tst/i1/Cout3}
add wave {Block1_vlg_vec_tst/i1/Cout4}
add wave {Block1_vlg_vec_tst/i1/res1}
add wave {Block1_vlg_vec_tst/i1/res2}
add wave {Block1_vlg_vec_tst/i1/res3}
add wave {Block1_vlg_vec_tst/i1/res4}
run -all
