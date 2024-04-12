//~ `New testbench
`timescale 1ns / 1ps
`include "notgate.v"

module tb_top_module;
  // top_module Parameters
  parameter PERIOD = 10;


  // top_module Inputs
  reg  in = 0;

  // top_module Outputs
  wire out;


  // initial
  // begin
  //     forever #(PERIOD/2)  clk=~clk;
  // end

  // initial
  // begin
  //     #(PERIOD*2) rst_n  =  1;
  // end

  top_module u_top_module (
      .in(in),

      .out(out)
  );

  initial begin
    $dumpfile("./tb_test.vcd");
    $dumpvars;
    in = 1'b0;
    #10 in = 1'b1;
    #10 in = 1'b0;
    #10 in = 1'b1;
    #10 in = 1'b0;
    #10 in = 1'b1;
    $finish;
  end

endmodule
