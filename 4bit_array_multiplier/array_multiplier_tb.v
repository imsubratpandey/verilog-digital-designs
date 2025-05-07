module array_multiplier_tb();       
    reg [3:0]A;
    reg [3:0]B;
    wire [7:0]PRODUCT; 
    array_multiplier dut(.a(A),.b(B),.product(PRODUCT));
    initial begin 
     A = 10; B = 12; #111; A = 13; B = 17; #111;
     A = 10; B = 22; #111; A = 11; B = 21; #111;
     A = 18; B = 12; #111; A = 15; B = 10; #111;
     A = 13; B = 19; #111; A = 17; B = 15; #111;
     A = 00; B = 00;
   end 
endmodule