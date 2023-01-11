module bool_equation_error_index(
    input error_1,error_2,
    output error_index
);
wire error_num_1;
not(error_num_1,error_1);
and(error_index,error_2,error_num_1); 
endmodule