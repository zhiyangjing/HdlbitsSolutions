module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
  wire[15:0] low_sum,high_sum;
  wire low_cout,high_cout;
  wire [15:0] low_part;
  wire low_xor_cout;
  assign {low_xor_cout,low_part} = (b[15:0] ^ {16{sub}}) + sub;
  add16 add_inst1(a[15:0],low_part,1'b0,sum[15:0],low_cout);
  add16 add_inst2(a[31:16],(b[31:16] ^ {16{sub}}) + low_xor_cout,low_cout,sum[31:16],high_cout);
endmodule



module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
  assign {cout,sum} = a + b + cin;
endmodule