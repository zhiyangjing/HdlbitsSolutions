// `default_nettype none
module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
  wire [99:0] cout_temp;
  wire [99:0] sum_temp;
  fulladder fa(a[0],b[0],cin,cout_temp[0],sum_temp[0]);
  genvar i;
  generate 
    for (i = 1;i < 100;i=i + 1) begin : adder_gen
        fulladder fa(a[i],b[i],cout_temp[i-1],cout_temp[i],sum_temp[i]);
        assign sum = 100'd1;
    end
  endgenerate
  assign cout = cout_temp;
  assign sum = sum_temp;
endmodule

module fulladder( 
    input c, d, cin,
    output reg cout, sum );
    always @(*) begin
      {cout ,sum} = c + d + cin;
    end
endmodule
