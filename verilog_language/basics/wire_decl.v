`default_nettype none
module top_module (
    input  a,
    input  b,
    input  c,
    input  d,
    output out,
    output out_n
);
  wire firstupper;
  wire firstlower;
  wire secondupper;
  assign firstupper  = a && b;
  assign firstlower  = c && d;
  assign secondupper = firstlower || firstupper;
  assign out         = secondupper;
  assign out_n       = ~secondupper;
endmodule
