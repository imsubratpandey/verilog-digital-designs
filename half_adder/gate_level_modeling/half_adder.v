module half_adder(input a, b, output sum, carry);
   xor gate_1(sum, a, b);
   and gate_2(carry, a, b);
endmodule