
//~ `New testbench
`timescale  1ns / 1ps
`include "./module_addsub.v"

module tb_top_module;

// top_module Parameters
parameter PERIOD  = 10;


// top_module Inputs
reg   [31:0]  a                            = 0 ;
reg   [31:0]  b                            = 0 ;
reg   sub                                  = 0 ;

// top_module Outputs
wire  [31:0]  sum                          ;


top_module  u_top_module (
    .a                       ( a    [31:0] ),
    .b                       ( b    [31:0] ),
    .sub                     ( sub         ),

    .sum                     ( sum  [31:0] )
);

initial
begin
    $dumpfile("./module_faddsub.vcd");
    $dumpvars;
    sub=1'b0;
    a = 31'b0;
    b = 31'b0;
    #10 b = 31'h1;
    #10 b = 31'h2;
    #10 a = 31'h1;
    #10 a = 31'hffff;b = 31'h0;sub=1'b1;
    #10 b=31'h1;
    #10 b=31'h2ccc1;
    #10 b=31'h0;a=31'h0;
    $finish;

    $finish;
end

endmodule