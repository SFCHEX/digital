module Slowed_down_clock(input clock_in,output reg clock_out);

parameter normal_mode = 28'd4;

Clock_divider mode_normal(clock_in,normal_mode,clock_out);


endmodule