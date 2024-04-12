module my_dff8 (
    input        clk,
    input  [7:0] d,
    output [7:0] q
);

endmodule


module top_module (
    input        clk,
    input  [7:0] d,
    input  [1:0] sel,
    output [7:0] q
);
  wire [7:0] q1;
  wire [7:0] q2;
  wire [7:0] q3;
  reg  [7:0] q4;

  my_dff8 inst1 (
      .clk(clk),
      .d  (d),
      .q  (q1)
  );

  my_dff8 inst2 (
      .clk(clk),
      .d  (q1),
      .q  (q2)
  );
  my_dff8 inst3 (
      .clk(clk),
      .d  (q2),
      .q  (q3)
  );

  // always @(posedge clk) begin
  //   if (sel == 2'b00) begin
  //     assign q = d;
  //   end
  // end

  always @(*)
    case (sel)

      2'b00: q4 = d;
      2'b01: q4 = q1;
      2'b10: q4 = q2;
      2'b11: q4 = q3;
    endcase
  assign q = q4;

endmodule


module top_module2 (
    input clk,
    input [7:0] d,
    input [1:0] sel,
    output reg [7:0] q
);

  wire [7:0] o1, o2, o3;  // output of each my_dff8

  // Instantiate three my_dff8s
  my_dff8 d1 (
      clk,
      d,
      o1
  );
  my_dff8 d2 (
      clk,
      o1,
      o2
  );
  my_dff8 d3 (
      clk,
      o2,
      o3
  );

  // This is one way to make a 4-to-1 multiplexer
  always @(*)  // Combinational always block
    case (sel)
      2'h0: q = d;
      2'h1: q = o1;
      2'h2: q = o2;
      2'h3: q = o3;
    endcase

endmodule

// --port_declarations_indentation=indent --indentation_spaces=4  --wrap_spaces=4 --assignment_statement_alignment=align --named_port_alignment=align --port_declarations_alignment=align --module_net_variable_alignment=align
