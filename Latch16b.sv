module Latch16b(input enable,input [15:0]in,output [15:0]out);

wire high;
assign high=1;
Dlatch DL0(in[0],enable,high,out[0]);
Dlatch DL1(in[1],enable,high,out[1]);
Dlatch DL2(in[2],enable,high,out[2]);
Dlatch DL3(in[3],enable,high,out[3]);
Dlatch DL4(in[4],enable,high,out[4]);
Dlatch DL5(in[5],enable,high,out[5]);
Dlatch DL6(in[6],enable,high,out[6]);
Dlatch DL7(in[7],enable,high,out[7]);
Dlatch DL8(in[8],enable,high,out[8]);
Dlatch DL9(in[9],enable,high,out[9]);
Dlatch DL10(in[10],enable,high,out[10]);
Dlatch DL11(in[11],enable,high,out[11]);
Dlatch DL12(in[12],enable,high,out[12]);
Dlatch DL13(in[13],enable,high,out[13]);
Dlatch DL14(in[14],enable,high,out[14]);
Dlatch DL15(in[15],enable,high,out[15]);



endmodule