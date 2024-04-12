`default_nettype none

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
  wire [15:0] a_low,b_low,a_high,b_high;
  assign a_low = a[15:0];
  assign b_low = b[15:0];
  assign a_high = a[31:16];
  assign b_high = b[31:16];
  wire [15:0] low_sum;
  wire [15:0] high_sum;
  wire low_cout;
  wire cout; // 声明cout为wire类型
  add16 add1(a_low,b_low,1'b0,low_sum, low_cout);
  add16 add2(a_high,b_high,low_cout, high_sum, cout);
  assign sum = {high_sum,low_sum};
endmodule

module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
  assign {cout,sum} = a + b + cin;
endmodule