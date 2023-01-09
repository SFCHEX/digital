transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/comparator.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/m3216.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/bool_equation_reset_values.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/Sped_up_clock.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/Slowed_down_clock.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/Signal2.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/Signal1.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/Normal_clock.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/m41.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/m22.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/m21.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/FullAdderModule.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/full4adder.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/digit2adder.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/digit1adder.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/DFlop.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/clock_signals.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/bitAdder.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/miniloader.sv}
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/loader.sv}
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
vlog -sv -work work +incdir+D:/Documents/digital {D:/Documents/digital/registor16b.sv}

