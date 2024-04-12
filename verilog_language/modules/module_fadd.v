module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
  wire low_cout,high_cout;
  wire [15:0] low_sum,high_sum;
  add16 add_inst1(a[15:0],b[15:0],1'b0,low_sum,low_cout);
  add16 add_inst2(a[31:16],b[31:16],low_cout,high_sum,high_cout);
  assign sum = {high_sum,low_sum};
endmodule




module add1 ( input a, input b, input cin,   output sum, output cout );
  assign sum = (a ^ b) ^ cin;
  assign cout = ((a ^ b) & cin) || (a & b);
// Full adder module here

endmodule

module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );


endmodule