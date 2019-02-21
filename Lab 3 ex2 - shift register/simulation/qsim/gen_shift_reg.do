onerror {exit -code 1}
vlib work
vcom -work work gen_shift_reg.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.gen_shift_reg_vhd_vec_tst
vcd file -direction gen_shift_reg.msim.vcd
vcd add -internal gen_shift_reg_vhd_vec_tst/*
vcd add -internal gen_shift_reg_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
