module array_multiplier(input [3:0] a, input [3:0] b, output [7:0] product);
  assign product[0] = a[0]&b[0];
  wire w_1, w_2, w_3, w_4, w_5, w_6, w_7, w_8, w_9, w_10, w_11, w_12, w_13, w_14, w_15, w_16, w_17;
  half_adder half_adder_m_1(a[1]&b[0], a[0]&b[1], product[1], w_1);
  full_adder full_adder_m_1(a[1]&b[1], a[0]&b[2], w_1, w_2, w_3);
  full_adder full_adder_m_2(a[1]&b[2], a[0]&b[3], w_3, w_4, w_5);
  half_adder half_adder_m_2(a[1]&b[3], w_5, w_6, w_7);
  half_adder half_adder_m_3(w_2, a[2]&b[0], product[2], w_15);
  full_adder full_adder_m_3(w_4, a[2]&b[1], w_15, w_14, w_16);
  full_adder full_adder_m_4(w_6, a[2]&b[2], w_16, w_13, w_17);
  full_adder full_adder_m_5(w_7, a[2]&b[3], w_17, w_9, w_8);
  half_adder half_adder_m_4(w_14, a[3]&b[0], product[3], w_12);
  full_adder full_adder_m_6(w_13, a[3]&b[1], w_12, product[4], w_11);
  full_adder full_adder_m_7(w_9, a[3]&b[2], w_11, product[5], w_10);
  full_adder full_adder_m_8(w_8, (a[3]&b[3]), w_10, product[6], product[7]);
endmodule
module half_adder(input a, b, output sumOut, carryOut);
  assign sumOut = a^b;
  assign carryOut = a&b;
endmodule
module full_adder(input a, b, carryIn, output sumOut, carryOut);
  assign sumOut = a^b^carryIn;
  assign carryOut = (a&b)|(a&carryIn)|(b&carryIn);
endmodule