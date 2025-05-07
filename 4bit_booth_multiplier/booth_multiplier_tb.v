module booth_multiplier_tb();
  reg [3:0] A;
  reg [3:0] B;
  wire [7:0] PRODUCT;
  
  booth_multiplier dut(.a(A),.b(B),.product(PRODUCT));
  initial begin
    A = 4'b0011; B = 4'b0100; #250;
    A = 4'b0010; B = 4'b1100; #250;
    A = 4'b1001; B = 4'b1010; #250;
    A = 4'b1101; B = 4'b1001; #250;
  end
endmodule