module c0_9(input wire clk, enable, reverse, input wire [7:0]load,output wire [4:1]Q);
	wire T1, T2,T3;
	
	boolean_circuit_1 b1(reverse,Q[1],Q[2],Q[3],Q[4],T1);
	boolean_circuit_2 b2(reverse,Q[1],Q[2],Q[3],Q[4],T2);
	boolean_circuit_3 b3(reverse,Q[1],Q[2],Q[3],Q[4],T3);
	
	t_ff_with_async_enable_set_reset t1(clk, 1,enable,  load[0], load[1],  Q[1]);
	t_ff_with_async_enable_set_reset t2(clk, T1,enable,load[2], load[3],Q[2]);
	t_ff_with_async_enable_set_reset t3(clk, T2,enable, load[4], load[5], Q[3]);
	t_ff_with_async_enable_set_reset t4(clk, T3,enable, load[6], load[7], Q[4]);
endmodule

