module half_sub_tb();
    reg A, B;
    wire DIFF, BORROW;
    half_sub dut(.a(A), .b(B), .diff(DIFF), .borrow(BORROW));
    initial begin
    A = 0; B = 0; #200 A = 0; B = 1; #200
    A = 1; B = 0; #200 A = 1; B = 1; #200
    A = 0; B = 0;
    end
endmodule