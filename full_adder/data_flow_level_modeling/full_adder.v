module full_adder(input a, b, carryIn, output sum, carryOut);
   assign {carryOut, sum} = a+b+carryIn;
endmodule