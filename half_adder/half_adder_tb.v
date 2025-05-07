module half_adder_tb();
    reg A, B;
    wire SUM, CARRY;
    half_adder dut(.a(A), .b(B), .sum(SUM), .carry(CARRY));
    initial begin
    A = 0; B = 0; #200 A = 0; B = 1; #200
    A = 1; B = 0; #200 A = 1; B = 1; #200
    A = 0; B = 0;
    end
endmodule