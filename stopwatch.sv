module stopwatch(input wire clk_in, REVERSE,START,RESET,SPEED_UP,SPEED_DOWN,ADD,SUBTRACT,output wire [16:1]Q);
    wire [31:0]load;
    wire enableCondition1,enableCondition2,enableCondition3;
	 wire enableCounter1,enableCounter2,enableCounter3;
    wire permitter;
	 wire [16:1]values;
	 wire [16:1]values_from_adder;
    wire ON_OFF;

    reg [15:0] array[1:0];

    initial begin
        array[0] = 16'b0001_0000_0010_0000; // 1020 BCD binary
        array[1] = 16'b0100_0000_0011_0000; // 4030 BCD binary
    end 


  
    clock_signals cs(clk_in,SPEED_DOWN,SPEED_UP,clk);
    bool_equation_reset_values b55(reset,reverse,add,signal,index_reset);
    bool_equation_selector b44(reset,subtract,add,signal,selector);
    FullAdderModule fa11(Q[12:9],Q[16:13],add,subtract,values_from_adder[16:1],signal);
	 
    m3216 mx(array[index_reset],values_from_adder[16:1],selector,values[16:1]);

    or(permitter,add,subtract,reset);

    loader l(permitter,values[16:1],load[31:0]);
	 
    comparator c12(array[reverse],Q[16:1],force_stop_signal);
	 
    not(force_stop_signal_i,force_stop_signal);
    and(ON_OFF,START,force_stop_signal_i);
	 
    c0_9 c1(clk,ON_OFF,REVERSE,load[7:0]  ,Q[4:1] );
	 
    boolean_circuit_4 en1(REVERSE,Q[1],Q[2],Q[3],Q[4],enableCondition1);
	 and(enableCounter1,ON_OFF,enableCondition1);
	 
    c0_5 c2(clk,enableCounter1,REVERSE,load[15:8] ,Q[8:5]);
	 
    boolean_circuit_7 en2(REVERSE,Q[5],Q[6],Q[7],Q[8],enableCondition2);
	 and(enableCounter2,ON_OFF,enableCondition1,enableCondition2);

    c0_9 c3(clk,enableCounter2,REVERSE,load[22:15],Q[12:9]);
	 
    boolean_circuit_11 en3(REVERSE,Q[9],Q[10],Q[11],Q[12],enableCondition3);
	 and(enableCounter3,ON_OFF,enableCondition1,enableCondition2,enableCondition3);

    c1_4 c4(clk,enableCounter3,REVERSE,load[31:23],Q[16:13]);
	 
endmodule