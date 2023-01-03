module loader(input wire permit,input wire [1:16]values,output wire[1:32]out);
    miniloader m1(permit,values[1],out[1],out[2]);
    miniloader m2(permit,values[2],out[3],out[4]);
    miniloader m3(permit,values[3],out[5],out[6]);
    miniloader m4(permit,values[4],out[7],out[8]);
	 
    miniloader m5(permit,values[5],out[9],out[10]);
    miniloader m6(permit,values[6],out[11],out[12]);
    miniloader m7(permit,values[7],out[13],out[14]);
    miniloader m8(permit,values[8],out[15],out[16]);

    miniloader m9(permit,values[9],out[17],out[18]);
    miniloader m10(permit,values[10],out[19],out[20]);
    miniloader m11(permit,values[11],out[21],out[22]);
    miniloader m12(permit,values[12],out[23],out[24]);

    miniloader m13(permit,values[13],out[25],out[26]);
    miniloader m14(permit,values[14],out[27],out[28]);
    miniloader m15(permit,values[15],out[29],out[30]);
    miniloader m16(permit,values[16],out[31],out[32]);
endmodule