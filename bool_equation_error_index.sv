module bool_equation_error_index(
    input error_1,error_2,
    output error_index
);
wire error_1_i;
not(error_1_i,error_1);
and(error_index,error_1_i,error_2); 
endmodule


