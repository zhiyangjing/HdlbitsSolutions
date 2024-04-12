//~ `New testbench
`include "./bcdadd100.v"
`timescale  1ns / 1ps

module tb_top_module;

// top_module Parameters
parameter PERIOD  = 10;


// top_module Inputs
reg   [399:0]  a                           = 0 ;
reg   [399:0]  b                           = 0 ;
reg   cin                                  = 0 ;

// top_module Outputs
wire  cout                                 ;
wire  [399:0]  sum                         ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end

top_module  u_top_module (
    .a                       ( a     [399:0] ),
    .b                       ( b     [399:0] ),
    .cin                     ( cin           ),

    .cout                    ( cout          ),
    .sum                     ( sum   [399:0] )
);

initial
begin
    $dumpfile(bcdadd100.vcd);
    $dumpvars;
    
    $finish;
end

endmodule
