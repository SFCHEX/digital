transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/t_ff_with_async_enable_set_reset.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/stopwatch.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/c1_4.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/c0_9.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/c0_5.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/boolean_circuit_7.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/boolean_circuit_6.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/boolean_circuit_5.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/boolean_circuit_4.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/boolean_circuit_3.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/boolean_circuit_2.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/boolean_circuit_13.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/boolean_circuit_12.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/boolean_circuit_11.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/boolean_circuit_1.sv}

