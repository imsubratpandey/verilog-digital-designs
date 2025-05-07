module half_sub(input a, b, output reg diff, borrow);
   always @(a, b)
   begin
       case({a, b})
       2'b00: begin diff = 0; borrow = 0; end
       2'b01: begin diff = 1; borrow = 1; end
       2'b10: begin diff = 1; borrow = 0; end
       2'b11: begin diff = 0; borrow = 0; end
       endcase
   end
endmodule