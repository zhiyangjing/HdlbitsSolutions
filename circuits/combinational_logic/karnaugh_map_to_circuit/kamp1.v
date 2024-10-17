
module top_module (
    input  a,
    input  b,
    input  c,
    output reg out
);
  always @(*) begin
    if (a == 0 && b == 0 && c == 0) begin
      out <= 0;
    end else begin
      out <= 1;
    end
  end

endmodule
