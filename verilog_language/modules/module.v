module mod_a ( input in1, input in2, output out );
    assign out = in1 & in2;
    // Module body
endmodule

module top_module ( input a, input b, output out );
    // mod_a instance (.a(in1) .b(in2) .out(out));
    mod_a inst (.in1(a), .in2(b), .out(out));
endmodule

