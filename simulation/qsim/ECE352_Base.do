onerror {exit -code 1}
vlib work
vlog -work work ECE352_Base.vo
vlog -work work fa4_timing_sim.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.fa4_vlg_vec_tst -voptargs="+acc"
vcd file -direction ECE352_Base.msim.vcd
vcd add -internal fa4_vlg_vec_tst/*
vcd add -internal fa4_vlg_vec_tst/i1/*
run -all
quit -f
