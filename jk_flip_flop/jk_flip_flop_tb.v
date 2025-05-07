module jk_flip_flop_tb();
  reg CLOCK, RESET, J, K;
  wire Q, Q_BAR;
  jk_flip_flop dut(.clock(CLOCK), .reset(RESET), .j(J), .k(K), .q(Q), .q_bar(Q_BAR) );
  initial begin
  J = 1'b0; K = 1'b0; RESET = 1; CLOCK = 1; #10
  RESET = 0; J = 1'b1; K = 1'b0; #200
  RESET = 0; J = 1'b0; K = 1'b1; #200
  RESET = 0; J = 1'b1; K = 1'b1; #200
  RESET = 0; J = 1'b0; K = 1'b0; #200
  RESET = 1; J = 1'b1; K = 1'b0; 
  end
  always #25 CLOCK <= ~CLOCK;
endmodule