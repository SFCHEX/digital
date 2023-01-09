module Sped_up_clock(input clock_in,output reg clock_out);

// input clock on FPGA
// output clock after dividing the input clock by divisor
reg[27:0] counter=28'd0;
parameter DIVISOR = 28'd2;
// The frequency of the output clk_out

always @(posedge clock_in)
begin
 counter <= counter + 28'd25000;
 if(counter>=(DIVISOR-1))
  counter <= 28'd0;
 clock_out <= (counter<DIVISOR/2)?1'b1:1'b0;
end


endmodule