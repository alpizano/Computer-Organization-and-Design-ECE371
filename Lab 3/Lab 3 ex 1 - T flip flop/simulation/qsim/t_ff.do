onerror {exit -code 1}
vlib work
vcom -work work t_ff.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.t_ff_vhd_vec_tst
vcd file -direction t_ff.msim.vcd
vcd add -internal t_ff_vhd_vec_tst/*
vcd add -internal t_ff_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
