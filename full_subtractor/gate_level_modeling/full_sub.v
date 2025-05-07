module full_sub(input a, b, borrowIn, output diff, borrowOut);
   wire wire_1, wire_2, wire_3;
   xor (wire_1, a, b);
   xor (diff, wire_1, borrowIn);
   and (wire_2, ~a, b);
   and (wire_3, ~wire_1, borrowIn);
   or (borrowOut , wire_2, wire_3);
endmodule