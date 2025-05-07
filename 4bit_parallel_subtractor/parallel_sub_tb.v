module parallel_sub_tb();
	reg [3:0] A, B;
	reg BORROW_IN;
	wire [3:0] DIFF;
	wire BORROW_OUT;
	parallel_sub dut (.a(A), .b(B), .borrowIn(BORROW_IN), .diff(DIFF), .borrowOut(BORROW_OUT));
	initial begin
    A = 0000; B = 0000; BORROW_IN = 1; #111 A = 0101; B = 0100; BORROW_IN = 1; #111 
    A = 0010; B = 0100; BORROW_IN = 0; #111 A = 0110; B = 0011; BORROW_IN = 1; #111 
    A = 1010; B = 1100; BORROW_IN = 0; #111 A = 0101; B = 0101; BORROW_IN = 1; #111 
    A = 0011; B = 0101; BORROW_IN = 0; #111 A = 1011; B = 0010; BORROW_IN = 1; #111 
    A = 0; B = 0; BORROW_IN = 0; 
    end     
endmodule
