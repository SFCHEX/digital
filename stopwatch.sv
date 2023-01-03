module stopwatch(input wire clk, REVERSE,ON_OFF,RESET,SPEED_UP,SPEED_DOWN,ADD,SUBTRACT,output wire [16:1]Q);
    wire [27:0]load;
    wire enableCondition1,enableCondition2,enableCondition3;
	 wire enableCounter1,enableCounter2,enableCounter3;
	 /*      

*/    
    c0_9 c1(clk,ON_OFF         ,REVERSE,load[7:0]  ,Q[4:1] );
	 
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