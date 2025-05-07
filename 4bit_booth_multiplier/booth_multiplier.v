module booth_multiplier(PRODUCT, A, B);
 output reg signed [7:0] PRODUCT;
 input signed [3:0] A, B;

 reg [1:0] temp;
 integer i;
 reg e;
 reg [3:0] B1;

 always @(A,B)
 begin
   PRODUCT = 8'd0;
   e = 1'b0;
   B1 = -B;
    
   for (i=0; i<4; i=i+1)
   begin
     temp = { A[i], e };
     case(temp)
       2'd2 : PRODUCT[7:4] = PRODUCT[7:4] + B1;
       2'd1 : PRODUCT[7:4] = PRODUCT[7:4] + B;
     endcase
     PRODUCT = PRODUCT >> 1;
     PRODUCT[7] = PRODUCT[6];
     e=A[i];
   end
 end
endmodule






module booth_multiplier(input signed [3:0] a, b, output reg signed [7:0] product);
  reg [1:0] temp;
  reg [3:0] b_1;
  reg qn_1;
  integer i;
  always@(a,b)
  begin
    product = 8'b0;
    qn_1 = 1'b0;
    b_1 = -b;
    for(i = 0; i < 4; i=i+1)
    begin
      temp = {a[i], qn_1};
      case(temp)
        2'd2 : product[7:4] = product[7:4] + b_1;
        2'd1 : product[7:4] = product[7:4] + b;
      endcase
      product = product >> 1;
      product[7] = product[6];
      qn_1 = a[i];
    end
  end
endmodule