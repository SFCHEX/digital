module miniloader(input wire permit, value,output set,reset );

and(set,value,permit);
wire permit_i;
not(permit_i,permit);
and(reset,value,permit_i);

endmodule