module half_sub(input a, b, output diff, borrow);
   xor gate_1(diff, a, b);
   and gate_2(borrow, ~a, b);
endmodule