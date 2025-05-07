module d_flip_flop(input d, clock, reset, output reg q, output q_bar);
  assign q_bar = ~q;
  always @(posedge clock)
  begin
    if (reset)
      begin q<=1'b0; end
    else
      begin q<=d; end
  end
endmodule