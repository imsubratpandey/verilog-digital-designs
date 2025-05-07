module t_flip_flop_tb();
  reg CLOCK, RESET, T;
  wire Q, Q_BAR;
  t_flip_flop dut(.clock(CLOCK), .reset(RESET), .t(T), .q(Q), .q_bar(Q_BAR) );
  initial begin
  T = 1'b1; RESET = 1; CLOCK = 1; #10
  RESET = 0; T = 1'b0; #200
  RESET = 0; T = 1'b1; #200
  RESET = 0; T = 1'b1; #200
  RESET = 0; T = 1'b0; #200
  RESET = 1; T = 1'b1; 
  end
  always #25 CLOCK <= ~CLOCK;
endmodule