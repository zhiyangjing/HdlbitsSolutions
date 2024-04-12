module mod_a ( output var1, output var2, input var3, input var4, input var5, input var6);

endmodule


module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    mod_a inst (out1,out2,a,b,c,d);

endmodule