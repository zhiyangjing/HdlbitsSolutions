module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);
  assign motor = (ring == 1) ? vibrate_mode : 0;
  assign ringer = (ring == 1) ? ~vibrate_mode : 0;
endmodule
