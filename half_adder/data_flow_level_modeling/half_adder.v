module half_adder(input a, b, output sum, carry);
   assign sum = (~a&b)+(a&~b);
   assign carry = a&b;
endmodule