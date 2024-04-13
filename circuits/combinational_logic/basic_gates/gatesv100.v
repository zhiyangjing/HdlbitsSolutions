module top_module (
    input [99:0] in,
    output reg [98:0] out_both,
    output reg [99:1] out_any,
    output reg [99:0] out_different
);
  always @(*) begin
    for (integer i = 0; i < 100; i = i + 1) begin
      if (i < 99) begin
        out_both[i] = in[i] && in[i+1];
      end
      if (i > 0) begin
        out_any[i] = in[i] || in[i-1];
      end
      out_different[i] = in[i] ^ in[(i+1) % 100];
    end
  end
endmodule
