module full_sub(input a, b, borrowIn, output diff, borrowOut);
   assign diff = a^b^borrowIn;
   assign borrowOut = (~a&b)+(~a&borrowIn)+(b&borrowIn); 
endmodule