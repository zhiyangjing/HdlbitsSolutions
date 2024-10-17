module top_module (
    input [255:0] in,
    input [7:0] sel,
    output out
);
  assign out = in[sel];
endmodule

module top_module (
    input [255:0] in,
    input [7:0] sel,
    output reg out
);
  always @(*) begin
    out = in[sel];
  end
endmodule
