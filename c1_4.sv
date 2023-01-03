module c1_4(input wire clk, enable, reverse, input wire [0:5]load,output wire [1:4]Q);
    wire T1,T2;
	boolean_circuit_12 b1(reverse,Q[1],Q[2],Q[3],Q[4],T1);
	boolean_circuit_13 b2(reverse,Q[1],Q[2],Q[3],Q[4],T2);
	t_ff_with_async_enable_set_reset t1(clk, 1, enable,  load[0], load[1], Q[1]);
	t_ff_with_async_enable_set_reset t2(clk, T1,enable,load[2], load[3], Q[2]);
	t_ff_with_async_enable_set_reset t3(clk, T2,enable, load[4], load[5], Q[3]);
	assign Q[4]='0;
endmodule
