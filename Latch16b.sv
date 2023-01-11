module Latch16b(input enable,input [27:0]in,output [27:0]out);

wire high;
assign high=1;
Dlat DL0(in[0],high,enable,out[0]);
Dlat DL1(in[1],high,enable,out[1]);
Dlat DL2(in[2],high,enable,out[2]);
Dlat DL3(in[3],high,enable,out[3]);
Dlat DL4(in[4],high,enable,out[4]);
Dlat DL5(in[5],high,enable,out[5]);
Dlat DL6(in[6],high,enable,out[6]);
Dlat DL7(in[7],high,enable,out[7]);
Dlat DL8(in[8],high,enable,out[8]);
Dlat DL9(in[9],high,enable,out[9]);
Dlat DL10(in[10],high,enable,out[10]);
Dlat DL11(in[11],high,enable,out[11]);
Dlat DL12(in[12],high,enable,out[12]);
Dlat DL13(in[13],high,enable,out[13]);
Dlat DL14(in[14],high,enable,out[14]);
Dlat DL15(in[15],high,enable,out[15]);


Dlat DL16(in[16],high,enable,out[16]);
Dlat DL17(in[17],high,enable,out[17]);
Dlat DL18(in[18],high,enable,out[18]);
Dlat DL19(in[19],high,enable,out[19]);
Dlat DL20(in[20],high,enable,out[20]);
Dlat DL21(in[21],high,enable,out[21]);
Dlat DL22(in[22],high,enable,out[22]);
Dlat DL23(in[23],high,enable,out[23]);
Dlat DL24(in[24],high,enable,out[24]);
Dlat DL25(in[25],high,enable,out[25]);
Dlat DL26(in[26],high,enable,out[26]);
Dlat DL27(in[27],high,enable,out[27]);


endmodule