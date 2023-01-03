module t_ff_with_async_enable_set_reset (
  input wire clk,
  input wire t,
  input wire enable,
  input wire set,
  input wire reset,
  output reg q
);
  initial q=0;
  always @ (posedge clk) begin
      if (enable) begin
        if (set) begin
          q <= 1;
        end
        else if (reset) begin
          q <= 0;
        end
        else if (t) begin
          q <= ~q;
        end
      end
    end
endmodule