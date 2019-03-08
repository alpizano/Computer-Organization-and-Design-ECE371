transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {G:/PURDUE/Semester VII - Spring 2019/ECE371/Github/Labs/Lab 4/ex 2 - tbird_lights/tbird_lights.vhd}

vcom -2008 -work work {G:/PURDUE/Semester VII - Spring 2019/ECE371/Github/Labs/Lab 4/ex 2 - tbird_lights/simulation/modelsim/tbird_lights.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  NEWTB

add wave *
view structure
view signals
run -all
