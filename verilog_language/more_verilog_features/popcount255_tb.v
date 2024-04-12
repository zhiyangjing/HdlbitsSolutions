//~ `New testbench
`timescale 1ns / 1ps
`include "./popcount255.v"

module tb_top_module;

  // top_module Parameters
  parameter PERIOD = 10;


  // top_module Inputs
  reg  [254:0] in = 0;

  // top_module Outputs
  wire [  7:0] out;


  top_module u_top_module (
      .in(in[254:0]),

      .out(out[7:0])
  );

  initial begin
    $dumpfile("./popcount255.vcd");
    $dumpvars;
    in = 255'haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa;
    #10 in = 255'h777777777777777777777777777777777777777777777777777777777777777;
    #10;
    $finish;
  end

endmodule
