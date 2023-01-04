
module FullAdderModule(
input [3:0]q1,
input [3:0]q2,
input add,sub,
output [7:0]out_final, //output 
output reset
);

// Flow :
/*
Buttons are pressed-->signal1 module-->signal 01/11-->Clock opens for registors-->values are passed to adding digit 1:
*/

//Temps
wire [3:0]q1T;
wire [3:0]q2T;
wire [3:0]qn1, qn1r, qn2, qn2r;

//signal 1
wire [1:0]signal_1;    
wire enableR1;
or(enableR1,add,sub);
Signal1 signal1(add,sub,signal_1);  

//signal 2
wire [1:0]signal_2;
wire increment,decrement,enableR2;
Signal2 signal2(increment,decrement,signal_1,enableR2,signal_2);

//Filling registors//
registor4b r1(enableR1,q1,q1T);  
registor4b r2(enableR2,q2,q2T);

//adding modules//

// 2min adder
digit1adder min1(signal_1[0],signal_1[1],q1,qn1,qn1r,increment,decrement); 

//1 min adder
digit2adder min2(signal_2[0],signal_2[1],q2,qn2,qn2r,reset);

// Gives output for preset and set signals that feed the loader into the flipflops
//16 bit output 

 or(out_final[0],qn1[0]);
 or(out_final[1],qn1[1]);
 or(out_final[2],qn1[2]);
 or(out_final[3],qn1[3]);
 or(out_final[4],qn2[0]);
 or(out_final[5],qn2[1]);
 or(out_final[6],qn2[2]);
 or(out_final[7],qn2[3]);


//reset signal 
o

endmodule
