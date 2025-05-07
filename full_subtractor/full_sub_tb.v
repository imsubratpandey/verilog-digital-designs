module full_sub_tb();
    reg A, B, BORROW_IN;
    wire DIFF, BORROW_OUT;
    full_sub dut(.a(A), .b(B), .borrowIn(BORROW_IN), .diff(DIFF), .borrowOut(BORROW_OUT));
    initial begin
    A = 0; B = 0; BORROW_IN = 0; #111 A = 0; B = 0; BORROW_IN = 1; #111
    A = 0; B = 1; BORROW_IN = 0; #111 A = 0; B = 1; BORROW_IN = 1; #111
    A = 1; B = 0; BORROW_IN = 0; #111 A = 1; B = 0; BORROW_IN = 1; #111
    A = 1; B = 1; BORROW_IN = 0; #111 A = 1; B = 1; BORROW_IN = 1; #111
    A = 0; B = 0; BORROW_IN = 0;
    end
endmodule