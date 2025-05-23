module half_adder(input a, b, output reg sum, carry);
   always @(a, b)
   begin
       case({a, b})
       2'b00: begin sum = 0; carry = 0; end
       2'b01: begin sum = 1; carry = 0; end
       2'b10: begin sum = 1; carry = 0; end
       2'b11: begin sum = 0; carry = 1; end
       endcase
   end
endmodule