module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
  wire [15:0] low_sum,high_sum1,high_sum2;
  wire low_cout,high_cout1,high_cout2;
  add16 add_inst1(a[15:0],b[15:0],1'b0,low_sum,low_cout);
  add16 add_inst2(a[31:16],b[31:16],1'b0,high_sum1,high_cout1);
  add16 add_inst3(a[31:16],b[31:16],1'b1,high_sum2,high_cout2);
  assign sum = (low_cout == 0) ? {high_sum1,low_sum} : {high_sum2,low_sum};
endmodule

module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );

endmodule