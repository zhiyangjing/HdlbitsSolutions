module top_module (
    input  x,
    input  y,
    output z
);
  wire w[3:0];
  module_A A_inst1 ( .x(x), .y(y), .z(w[3]));
  module_A A_inst2 ( .x(x), .y(y), .z(w[2]));
  module_B B_inst1 ( .x(x), .y(y), .z(w[1]));
  module_B B_inst2 ( .x(x), .y(y), .z(w[0]));
  assign z = (w[3] || w[2]) ^ (w[1] && w[0]);
endmodule

module module_B (
    input  x,
    input  y,
    output z
);
  assign z = x ~^ y;
endmodule

module module_A (
    input  x,
    input  y,
    output z
);
  assign z = (x ^ y) && x;
endmodule
