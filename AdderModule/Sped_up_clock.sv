module Sped_up_clock(input clock_in,output reg clock_out);

parameter normal_mode = 28'd0;  //decimal equivilant to convert the fpga clock to counting speed

Clock_divider mode_normal(clock_in,normal_mode,clock_out);


endmodule