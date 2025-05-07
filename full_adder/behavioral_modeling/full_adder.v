module full_adder(input a, b, carryIn, output reg sum, carryOut);
   always @(a, b, carryIn)
   begin
       case({a, b, carryIn})
       3'b000: begin sum = 0; carryOut = 0; end
       3'b001: begin sum = 1; carryOut = 0; end
       3'b010: begin sum = 1; carryOut = 0; end
       3'b011: begin sum = 0; carryOut = 1; end
       3'b100: begin sum = 1; carryOut = 0; end
       3'b101: begin sum = 0; carryOut = 1; end
       3'b110: begin sum = 0; carryOut = 1; end
       3'b111: begin sum = 1; carryOut = 1; end
       endcase
   end
endmodule