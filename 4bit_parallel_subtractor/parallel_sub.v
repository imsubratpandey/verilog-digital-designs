module parallel_sub(input [3:0] a, input [3:0] b, input borrowIn, output [3:0] diff, output borrowOut);
    wire gate_output_1, gate_output_2, gate_output_3, gate_output_4;
    xor gate_1(gate_output_1, b[0], 1);
    xor gate_2(gate_output_2, b[1], 1);
    xor gate_3(gate_output_3, b[2], 1);
    xor gate_4(gate_output_4, b[3], 1);
    wire carry_output_1, carry_output_2, carry_output_3;
    full_adder module_1(gate_output_1, a[0], borrowIn, diff[0], carry_output_1);
    full_adder module_2(gate_output_2, a[1], carry_output_1, diff[1], carry_output_2);
    full_adder module_3(gate_output_3, a[2], carry_output_2, diff[2], carry_output_3);
    full_adder module_4(gate_output_4, a[3], carry_output_3, diff[3], borrowOut);
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