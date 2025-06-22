transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Digital Lab/EE309_Pipelined_CPU/ALU.vhd}
vcom -93 -work work {C:/Digital Lab/EE309_Pipelined_CPU/regfile.vhd}
vcom -93 -work work {C:/Digital Lab/EE309_Pipelined_CPU/regfile1.vhd}
vcom -93 -work work {C:/Digital Lab/EE309_Pipelined_CPU/stage1.vhd}
vcom -93 -work work {C:/Digital Lab/EE309_Pipelined_CPU/stage2.vhd}
vcom -93 -work work {C:/Digital Lab/EE309_Pipelined_CPU/stage3.vhd}
vcom -93 -work work {C:/Digital Lab/EE309_Pipelined_CPU/stage5.vhd}
vcom -93 -work work {C:/Digital Lab/EE309_Pipelined_CPU/control.vhd}
vcom -93 -work work {C:/Digital Lab/EE309_Pipelined_CPU/proc.vhd}
vcom -93 -work work {C:/Digital Lab/EE309_Pipelined_CPU/mux2_1.vhd}
vcom -93 -work work {C:/Digital Lab/EE309_Pipelined_CPU/mux4_1.vhd}
vcom -93 -work work {C:/Digital Lab/EE309_Pipelined_CPU/sign_extend_16.vhd}
vcom -93 -work work {C:/Digital Lab/EE309_Pipelined_CPU/ring_buffer.vhd}
vcom -93 -work work {C:/Digital Lab/EE309_Pipelined_CPU/d_ff.vhd}
vcom -93 -work work {C:/Digital Lab/EE309_Pipelined_CPU/multiplier_16bit.vhd}

vcom -93 -work work {C:/Digital Lab/EE309_Pipelined_CPU/testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
