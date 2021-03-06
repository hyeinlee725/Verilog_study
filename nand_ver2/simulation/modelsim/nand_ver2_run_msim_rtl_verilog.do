transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/17.1/nand_ver2 {C:/intelFPGA_lite/17.1/nand_ver2/nand_ver2.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/17.1/nand_ver2 {C:/intelFPGA_lite/17.1/nand_ver2/tb_nand2.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_nand2

add wave *
view structure
view signals
run -all
