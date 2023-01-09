module bool_flashing(
    input error_2,
    input sys_clock,
    output display_enable
);

    wire notError;
    wire flashing;
    not(notError,error_2);
    and(flashing,error_2,sys_clock);
    or(display_enable,notError,flashing);
    

endmodule