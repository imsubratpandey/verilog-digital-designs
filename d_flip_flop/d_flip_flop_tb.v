module d_flip_flop_tb();
  reg CLOCK, RESET, D;
  wire Q, Q_BAR;
  d_flip_flop dut(.clock(CLOCK), .reset(RESET), .d(D), .q(Q), .q_bar(Q_BAR));
  initial begin
  D = 1'b0; RESET = 1; CLOCK = 1; #10
  RESET = 0; D = 1'b1; #200
  RESET = 0; D = 1'b0; #200
  RESET = 0; D = 1'b0; #200
  RESET = 0; D = 1'b1; #200
  RESET = 1; D = 1'b1; 
  end
  always #25 CLOCK <= ~CLOCK;
endmodule