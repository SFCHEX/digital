
module FullAdderModule(
input [3:0]q1,
input [3:0]q2,
input add,sub,
output [3:0]qn1, qn1r, qn2, qn2r,
output reset
);

//Def variables:



// Flow :
/*
Buttons are pressed-->signal1 module-->signal 01/11-->Clock opens for registors-->values are passed to adding digit 1:
*/

//Temps
wire [3:0]q1T;
wire [3:0]q2T;

//signal 1
wire [1:0]signal_1;    
wire enableR1;
or(enableR1,add,sub);
Signal1 signal1(add,sub,signal_1);  //Works 100%

//signal 2
wire [1:0]signal_2;
wire increment,decrement,enableR2;
Signal2 signal2(increment,decrement,signal_1,enableR2,signal_2);


//Filling registors//
registor4b r1(enableR1,q1,q1T);   //100%
registor4b r2(enableR2,q2,q2T);

//adding modules//
// 2min adder

digit1adder min1(signal_1[0],signal_1[1],q1,qn1,qn1r,increment,decrement); //100%

//1 min adder

digit2adder min2(signal_2[0],signal_2[1],q2,qn2,qn2r,reset);

// Gives output for preset and set signals that feed the loader into the flipflops
endmodule
