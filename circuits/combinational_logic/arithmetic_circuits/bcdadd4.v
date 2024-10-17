module top_module (
    input [15:0] a,
    input [15:0] b,
    input cin,
    output wire cout,
    output wire [15:0] sum
);
  wire [3:0] tempcout;
  my_bcd_fadd ad1 (
      a[3:0],
      b[3:0],
      cin,
      tempcout[0],
      sum[3:0]
  );
  my_bcd_fadd ad2 (
      a[7:4],
      b[7:4],
      tempcout[0],
      tempcout[1],
      sum[7:4]
  );
  my_bcd_fadd ad3 (
      a[11:8],
      b[11:8],
      tempcout[1],
      tempcout[2],
      sum[11:8]
  );
  my_bcd_fadd ad4 (
      a[15:12],
      b[15:12],
      tempcout[2],
      tempcout[3],
      sum[15:12]
  );
  assign cout = tempcout[3];
endmodule

module my_bcd_fadd (
    input [3:0] a,
    input [3:0] b,
    input cin,
    output reg cout,
    output reg [3:0] sum
);
  wire [4:0] temp;
  assign temp = a + b + cin;
  always @(*) begin
    if (temp >= 4'b1010) begin
      cout = 1;
      sum  = temp - 4'b1010;
    end else begin
      cout = 0;
      sum  = temp;
    end
  end


endmodule

