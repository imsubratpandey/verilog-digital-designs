module full_adder(input a, b, carryIn, output sum, carryOut);
   wire wire_1, wire_2, wire_3;
   and gate_1(wire_1, a, b);
   and gate_2(wire_2, carryIn, b);
   and gate_3(wire_3, a, carryIn);
   or gate_4(carryOut, wire_1, wire_2, wire_3);
   xor gate_5(sum, a, b, carryIn);
endmodule