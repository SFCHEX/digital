module latch (
  input wire enable,
  input wire in,
  output wire out
);
  always_ff @(posedge enable) begin
    out <= in;
  end
endmodule