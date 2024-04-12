module my_dff ( input clk, input d, output q );

endmodule

module top_module ( input clk, input d, output q );
    wire line1,line2;

    my_dff inst1(
        .clk(clk),
        .d(d),
        .q(line1)
    );
    
    my_dff inst2(
        .clk(clk),
        .d(line1),
        .q(line2)
    );

    my_dff inst3(
        .clk(clk),
        .d(line2),
        .q(q)
    );

endmodule
