module stopwatch(input wire clk_in, REVERSE,START,RESET,SPEED_UP,SPEED_DOWN,ADD,SUBTRACT,output wire [16:1]D_Q);
    wire enableCondition1,enableCondition2,enableCondition3;
	wire enableCounter1,enableCounter2,enableCounter3;
    wire permitter;
	wire [16:1]values;
	wire [16:1]values_from_adder;
    wire ON_OFF;
    wire [16:1]set;
    wire [16:1]reset;
    reg [15:0] array[1:0];
    wire index_RESET;
    wire selector;
    wire error_signal;
    wire signal;
    wire enable_r;
    wire [15:0]PEV_Q;
    wire REVERSE_SIGNAL;
    reg [15:0]error_code[1:0];
    wire display_enable;
    wire ERROR_1,ERROR_2;
    wire error_index;
    wire [15:0]before_reg;
    wire[16:1]Q;



    initial begin
        array[0] = 16'b0001_0000_0010_0000; // 1020 BCD binary
        array[1] = 16'b0100_1001_0011_0000; // 4930 BCD binary
        //error_code[0]=16'b;
        error_code[1]=16'b0101_0101_0101_0101;
    end 


    wire START_i;
    not(START_i,START);
    bool_equation_reverse_signals b1(START_i,REVERSE,REVERSE_SIGNAL,ERROR_1);
//  lat l(REVERSE,START_i,REVERSE_SIGNAL);
    //boolean_count_mode countMode(START,SPEED_UP,SPEED_DOWN);
    clock_signals cs(clk_in,SPEED_DOWN,SPEED_UP,clk,ERROR_2);
    FullAdderModule fa11(ADD,SUBTRACT,PEV_Q,values_from_adder[16:1],signal);

    bool_equation_reset_values b55(RESET,REVERSE_SIGNAL,ADD,signal,index_RESET);

    or(selector,RESET,signal);

    m3216 mx(values_from_adder[16:1],array[index_RESET],selector,values[16:1]);

    or(permitter,ADD,SUBTRACT,RESET);
    loader lo(permitter,values[16:1],set[16:1],reset[16:1]);

    wire REVERSE_SIGNAL_i;
	not(REVERSE_SIGNAL_i,REVERSE_SIGNAL);
    comparator c12(array[REVERSE_SIGNAL_i],Q[16:1],force_stop_signal);
	 
	 
	 
    not(force_stop_signal_i,force_stop_signal);
    and(ON_OFF,START,force_stop_signal_i);
	 
    c0_9 c1(clk,ON_OFF,REVERSE_SIGNAL,set[4:1],reset[4:1],Q[4:1] );
	 
    boolean_circuit_4 en1(REVERSE_SIGNAL,Q[1],Q[2],Q[3],Q[4],enableCondition1);
	and(enableCounter1,ON_OFF,enableCondition1);
	 
    c0_5 c2(clk,enableCounter1,REVERSE_SIGNAL,set[8:5],reset[8:5] ,Q[8:5]);
	 
    boolean_circuit_7 en2(REVERSE_SIGNAL,Q[5],Q[6],Q[7],Q[8],enableCondition2);
	and(enableCounter2,ON_OFF,enableCondition1,enableCondition2);

    c0_9 c3(clk,enableCounter2,REVERSE_SIGNAL,set[12:9],reset[12:9],Q[12:9]);
	 
    boolean_circuit_11 en3(REVERSE_SIGNAL,Q[9],Q[10],Q[11],Q[12],enableCondition3);
	and(enableCounter3,ON_OFF,enableCondition1,enableCondition2,enableCondition3);

    c1_4 c4(clk,enableCounter3,REVERSE_SIGNAL,set[16:13],reset[16:13],Q[16:13]);


    not(enable_r,clk);
    registor16b R2(enable_r,Q,PEV_Q);

    or(error_signal,ERROR_1,ERROR_2);

    not(display_enable,ERROR_1);

    bool_equation_error_index ei(ERROR_1,ERROR_2,error_index);

    m3216 mx_2(Q,error_code[error_index],error_signal,before_reg);  //error signal is 0 then display values as normal

    Latch16b L1(display_enable,before_reg,D_Q);  //manipulate display_enable
	 
endmodule