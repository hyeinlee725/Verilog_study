transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/17.1/full_adder_verilog {C:/intelFPGA_lite/17.1/full_adder_verilog/fulladder.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/17.1/full_adder_verilog {C:/intelFPGA_lite/17.1/full_adder_verilog/tb_fulladder.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_fulladder

add wave *
view structure
view signals
run -all
