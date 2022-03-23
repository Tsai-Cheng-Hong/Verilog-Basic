module pili_1(Clk,Clr,A,B,C,D,E,F);
input  Clk,Clr;
output A,B,C,D,E,F;
reg    [6:0] L;

always@(posedge Clk)

  if (Clr)  L = 7'b1000000;

  else if (L == 7'b1000000)   L = 7'b0100000;

  else if (L == 7'b0100000)   L = 7'b0010000;

  else if (L == 7'b0010000)   L = 7'b0001000;

  else if (L == 7'b0001000)   L = 7'b0000100;

  else if (L == 7'b0000100)   L = 7'b0000010;

  else if (L == 7'b0000010)   L = 7'b1000001;

  else if (L == 7'b1000001)   L = 7'b0000011;

  else if (L == 7'b0000011)   L = 7'b0000101;

  else if (L == 7'b0000101)   L = 7'b0001001;

  else if (L == 7'b0001001)   L = 7'b0010001;

  else if (L == 7'b0010001)   L = 7'b0100001;

  else if (L == 7'b0100001)   L = 7'b1000000;

  else 
          L = 7'b0000000;
  assign {A,B,C,D,E,F}=L[6:1];

endmodule

