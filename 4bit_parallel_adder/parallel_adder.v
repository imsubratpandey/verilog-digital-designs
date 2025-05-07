module parallel_adder(input [3:0] a, input [3:0] b, input carryIn, output [3:0] sum, output carryOut);
   wire carry_output_1, carry_output_2, carry_output_3;
   full_adder module_1(a[0], b[0], carryIn, sum[0], carry_output_1);
   full_adder module_2(a[1], b[1], carry_output_1, sum[1], carry_output_2);
   full_adder module_3(a[2], b[2], carry_output_2, sum[2], carry_output_3);
   full_adder module_4(a[3], b[3], carry_output_3, sum[3], carryOut);
endmodule
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