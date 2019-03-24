transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {G:/PURDUE/Semester VII - Spring 2019/ECE371/Github/Labs/Lab 5/ex1 - alu 32bit/full_adder.vhd}
vcom -2008 -work work {G:/PURDUE/Semester VII - Spring 2019/ECE371/Github/Labs/Lab 5/ex1 - alu 32bit/alu_1bit.vhd}
vcom -2008 -work work {G:/PURDUE/Semester VII - Spring 2019/ECE371/Github/Labs/Lab 5/ex1 - alu 32bit/alu_32bit.vhd}

vcom -2008 -work work {G:/PURDUE/Semester VII - Spring 2019/ECE371/Github/Labs/Lab 5/ex1 - alu 32bit/simulation/modelsim/alu_32bit.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
