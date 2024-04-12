`default_nettype none
module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    wire [99:0] cout_temp;
    genvar i;
    bcd_fadd ad0(a[3:0],b[3:0],cin,cout_temp[0],sum[3:0]);
    generate
      for (i = 4;i < 400;i = i + 4) begin:gen_bcd_add
        bcd_fadd ad0(a[i+3:i],b[i+3:i],cout_temp[i/4 - 1],cout_temp[i/4],sum[3 + i:i]);
      end
    endgenerate
    assign cout = cout_temp[99];
endmodule


module bcd_fadd (
    input [3:0] a,
    input [3:0] b,
    input     cin,
    output   cout,
    output [3:0] sum );

endmodule

module bcd_fadd2(
  input [3:0] a, b,
  input cin,
  output reg cout,
  output reg [3:0] sum
);
  always @(*) begin
    sum = a + b + cin;
    if (sum >  4'b1001) begin
      cout <= 1'b1;
      sum = sum - 4'b1010;
    end else begin 
      cout = 1'b0;
      sum = 4'b0000;
    end
  end
endmodule

