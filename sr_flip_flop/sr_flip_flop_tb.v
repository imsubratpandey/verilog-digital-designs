module sr_flip_flop_tb();
  reg CLOCK, RESET, S, R;
  wire Q, Q_BAR;
  sr_flip_flop dut(.clock(CLOCK), .reset(RESET), .s(S), .r(R), .q(Q), .q_bar(Q_BAR) );
  initial begin
  S = 1'b0; R = 1'b0; RESET = 1; CLOCK = 1; #10
  RESET = 0; S = 1'b1; R = 1'b0; #200
  RESET = 0; S = 1'b0; R = 1'b1; #200
  RESET = 0; S = 1'b1; R = 1'b1; #200
  RESET = 0; S = 1'b0; R = 1'b0; #200
  RESET = 1; S = 1'b1; R = 1'b0; 
  end
  always #25 CLOCK <= ~CLOCK;
endmodule