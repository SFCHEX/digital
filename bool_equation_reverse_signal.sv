module bool_equation_reverse_signals(
    input pause,reverse,
    output reverse_signal,error_code_1
);
wire high;
assign high =1;
wire error;
not(enable,pause);   //error if pause is low
Dlatch DL(reverse,pause,high,reverse_signal);
and(error_code_1,error);

endmodule