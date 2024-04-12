module top_module (
    input [7:0] in,
    output [31:0] out
);
    assign out = {{24{in[7]}},in[7:0]};
endmodule


module test_module (
    input [7:0] in,
    output [31:0] out );//

    wire [3:0] test;
    wire [3:0] good;
    assign test[3:0] = 4'b1011;
    assign good[3:0] = {1{test}};
endmodule