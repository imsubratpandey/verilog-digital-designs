module sr_flip_flop(input wire s, r, clock, reset, output reg q, q_bar);
  always @(posedge clock)
  begin
    if (reset)
      begin
      q=1'b0;
      q_bar=1'b1;
      end
    else
      begin
        case({s,r})
          {1'b0,1'b0}: begin q = q; q_bar = q_bar;   end
          {1'b0,1'b1}: begin q = 1'b0; q_bar = 1'b1; end
          {1'b1,1'b0}: begin q = 1'b1; q_bar = 1'b0; end
          {1'b1,1'b1}: begin q = 1'bx; q_bar = 1'bx; end
        endcase
      end
  end
endmodule