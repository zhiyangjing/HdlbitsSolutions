`default_nettype none
module top_module (
    input [254:0] in,
    output reg [7:0] out
);
  always @* begin
    out = 0;
    for (integer i = 0; i < 255; i++) begin
      out += in[i];
    end
  end
endmodule

