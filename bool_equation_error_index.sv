module bool_equation_error_index(
    input error_1,error_2,
    output error_index
);
not(error_index,error_1);
and(error_index,error_2); 
endmodule