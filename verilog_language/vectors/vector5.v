module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

endmodule

module top_module_common (
    input a, b, c, d, e,
    output [24:0] out );//
    
    wire [4:0] abcde;
    assign abcde = {a,b,c,d,e};
    wire [24:0] temp = {{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}};
    assign out = ~(temp ^ {5{abcde}});

    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    // assign out = ~{ ... } ^ { ... };

endmodule
