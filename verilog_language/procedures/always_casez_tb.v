//~ `New testbench
`timescale  1ns / 1ps
`include "./always_casez.v"

module tb_top_module;

// top_module Parameters
parameter PERIOD  = 10;


// top_module Inputs
reg   [7:0]  in                            = 0 ;

// top_module Outputs
wire  [2:0]  pos                           ;



top_module  u_top_module (
    .in                      ( in   [7:0] ),

    .pos                     ( pos  [2:0] )
);

initial
begin
    $dumpfile("./always_casez.vcd");
    $dumpvars;
    in = 8'b0;
    #10 in = 8'h1;
    #10 in = 8'h2;
    #10 in = 8'h3;
    #10 in = 8'h4;
    #10 in = 8'h5;
    #10 in = 8'h6;
    #10 in = 8'h7;
    #10 in = 8'h8;
    #10 in = 8'h9;
    #10 in = 8'h10;
    #10 in = 8'h11;
    #10 in = 8'h12;
    #10 in = 8'h13;
    #10 in = 8'h14;
    #10 in = 8'h15;
    #10 in = 8'h16;
    #10 in = 8'h17;
    #10 in = 8'h18;
    #10 in = 8'h19;
    #10 in = 8'h20;
    #10 in = 8'h21;
    #10 in = 8'h22;
    #10 in = 8'h23;
    #10 in = 8'h24;
    #10 in = 8'h25;
    #10;
    $finish;
end

endmodule