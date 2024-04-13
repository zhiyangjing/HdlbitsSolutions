module top_module (
    input [3:0] in,
    output reg [2:0] out_both,
    output reg [3:1] out_any,
    output reg [3:0] out_different
);
  always @(*) begin
    for (integer i = 0; i < 4; i = i + 1) begin
      if (i < 3) begin
        out_both[i] = in[i] & in[i+1];
      end
      if (i > 0) begin
        out_any[i] = in[i] || in[i-1];
      end
      out_different[i] = in[i] ^ in[(i+1)%4];
    end
  end
endmodule
