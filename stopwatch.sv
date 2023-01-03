module stopwatch(input wire clk, REVERSE,ON_OFF,RESET,SPEED_UP,SPEED_DOWN,ADD,SUBTRACT,output wire [1:16]Q);
    wire [0:27]load;
    wire enableCondition1,enableCondition2,enableCondition3;
	 wire enableCounter1,enableCounter2,enableCounter3;
	 /*      

*/    
    c0_9 c1(clk,ON_OFF         ,REVERSE,load[0:7]  ,Q[1:4] );
	 
    boolean_circuit_4 en1(REVERSE,Q[1],Q[2],Q[3],Q[4],enableCondition1);
	 and(enableCounter1,ON_OFF,enableCondition1);
	 
    c0_5 c2(clk,enableCounter1,REVERSE,load[8:13] ,Q[5:8]);
	 
    boolean_circuit_7 en2(REVERSE,Q[5],Q[6],Q[7],Q[8],enableCondition2);
	 and(enableCounter2,ON_OFF,enableCondition1,enableCondition2);

    c0_9 c3(clk,enableCounter2,REVERSE,load[14:21],Q[9:12]);
	 
    boolean_circuit_11 en3(REVERSE,Q[9],Q[10],Q[11],Q[12],enableCondition3);
	 and(enableCounter3,ON_OFF,enableCondition1,enableCondition2,enableCondition3);

    c1_4 c4(clk,enableCounter3,REVERSE,load[22:27],Q[13:16]);
	 
endmodule