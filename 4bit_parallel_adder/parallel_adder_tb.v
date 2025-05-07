module parallel_adder_tb();
	reg [3:0] A, B;
	reg CARRY_IN;
	wire [3:0] SUM;
	wire CARRY_OUT;
	parallel_adder dut (.a(A), .b(B), .carryIn(CARRY_IN), .sum(SUM), .carryOut(CARRY_OUT));
	initial begin
    A = 0000; B = 0000; CARRY_IN = 1; #111 A = 0101; B = 0100; CARRY_IN = 1; #111 
    A = 0010; B = 0100; CARRY_IN = 0; #111 A = 0110; B = 0011; CARRY_IN = 1; #111 
    A = 1010; B = 1100; CARRY_IN = 0; #111 A = 0101; B = 0101; CARRY_IN = 1; #111 
    A = 0011; B = 0101; CARRY_IN = 0; #111 A = 1011; B = 0010; CARRY_IN = 1; #111 
    A = 0; B = 0; CARRY_IN = 0; 
    end     
endmodule