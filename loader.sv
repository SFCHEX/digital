module loader(input wire permit,input wire [1:16]values,output wire[1:32]out);
    miniloader(permit,values[1],out[1],out[2]);
    miniloader(permit,values[2],out[3],out[4]);
    miniloader(permit,values[3],out[5],out[6]);
    miniloader(permit,values[4],out[7],out[8]);

    miniloader(permit,values[5],out[9],out[10]);
    miniloader(permit,values[6],out[10],out[12]);
    miniloader(permit,values[7],out[11],out[14]);
    miniloader(permit,values[8],out[13],out[16]);

    miniloader(permit,values[9],out[15],out[18]);
    miniloader(permit,values[10],out[17],out[20]);
    miniloader(permit,values[11],out[19],out[22]);
    miniloader(permit,values[12],out[21],out[24]);

    miniloader(permit,values[13],out[23],out[26]);
    miniloader(permit,values[14],out[25],out[28]);
    miniloader(permit,values[15],out[27],out[30]);
    miniloader(permit,values[16],out[31],out[32]);
endmodule