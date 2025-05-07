module full_sub(input a, b, borrowIn, output reg diff, borrowOut);
   always @(a, b, borrowIn)
   begin
       case({a, b, borrowIn})
       3'b000: begin diff = 0; borrowOut = 0; end
       3'b001: begin diff = 1; borrowOut = 1; end
       3'b010: begin diff = 1; borrowOut = 1; end
       3'b011: begin diff = 0; borrowOut = 1; end
       3'b100: begin diff = 1; borrowOut = 0; end
       3'b101: begin diff = 0; borrowOut = 0; end
       3'b110: begin diff = 0; borrowOut = 0; end
       3'b111: begin diff = 1; borrowOut = 1; end
       endcase
   end
endmodule