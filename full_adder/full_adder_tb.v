module full_adder_tb();
    reg A, B, CARRY_IN;
    wire SUM, CARRY_OUT;
    full_adder dut(.a(A), .b(B), .carryIn(CARRY_IN), .sum(SUM), .carryOut(CARRY_OUT));
    initial begin
    A = 0; B = 0; CARRY_IN = 0; #111 A = 0; B = 0; CARRY_IN = 1; #111
    A = 0; B = 1; CARRY_IN = 0; #111 A = 0; B = 1; CARRY_IN = 1; #111
    A = 1; B = 0; CARRY_IN = 0; #111 A = 1; B = 0; CARRY_IN = 1; #111
    A = 1; B = 1; CARRY_IN = 0; #111 A = 1; B = 1; CARRY_IN = 1; #111
    A = 0; B = 0; CARRY_IN = 0;
    end
endmodule