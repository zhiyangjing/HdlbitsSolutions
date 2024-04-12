`default_nettype none


module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );
    assign out_hi = in[15:8];
    assign out_lo = in[7:0];
endmodule



module test_module (
    input t
);
  wire [0:2] a, c;
  assign a = 3'b101;
  initial begin
    $display("%b", a);
    $display("%b", c);
    $finish;
  end
endmodule
