module stopwatch(input wire clk_in, REVERSE,START,RESET,SPEED_UP,SPEED_DOWN,ADD,SUBTRACT,output wire [16:1]Q);
    wire [27:0]load;
    wire enableCondition1,enableCondition2,enableCondition3;
	wire enableCounter1,enableCounter2,enableCounter3;
    wire permitter;
    wire ON_OFF;

    reg [15:0] array[1:0];

    initial begin
        array[0] = 16'b0001_0000_0010_0000; // 1020 BCD binary
        array[1] = 16'b0100_0000_0011_0000; // 4030 BCD binary
    end 


    
    clock_signals(clk_in,clkslow,clkfast,clk)
    bool_equation_reset_values(reset,reverse,add,signal,index_reset)
    bool_equation_selector(reset,subtract,add,signal,selector)
    fullAdderModule(Q[12:9],Q[16:13],add,subtract,values_from_adder[16:1],signal);
    mux(selector,array[index_reset],values_from_adder[16:1],values[16:1]);

    or(permitter,add,subtract,reset);

    loader l(permitter,values[16:1],load[31:0]);
    comparator(array[reverse],Q[16:1],force_stop_signal)

    not(force_stop_signal_i,force_stop_signal)
    and(ON_OFF,START,force_stop_signal_i)

    c0_9 c1(clk,start,REVERSE,load[7:0]  ,Q[4:1] );
	 
    boolean_circuit_4 en1(REVERSE,Q[1],Q[2],Q[3],Q[4],enableCondition1);
	 and(enableCounter1,ON_OFF,enableCondition1);
	 
    c0_5 c2(clk,enableCounter1,REVERSE,load[13:8] ,Q[8:5]);
	 
    boolean_circuit_7 en2(REVERSE,Q[5],Q[6],Q[7],Q[8],enableCondition2);
	 and(enableCounter2,ON_OFF,enableCondition1,enableCondition2);

    c0_9 c3(clk,enableCounter2,REVERSE,load[21:14],Q[12:9]);
	 
    boolean_circuit_11 en3(REVERSE,Q[9],Q[10],Q[11],Q[12],enableCondition3);
	 and(enableCounter3,ON_OFF,enableCondition1,enableCondition2,enableCondition3);

    c1_4 c4(clk,enableCounter3,REVERSE,load[27:22],Q[16:13]);
	 
endmodule