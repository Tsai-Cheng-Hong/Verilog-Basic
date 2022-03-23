module cnt (Clk,Clr,Q1,Q2);
input Clk,Clr;
output [3:0] Q1,Q2;
reg [3:0] Q1,Q2;

always@(posedge Clk)
  if(Clr)
   begin
    Q1 = 4'b1000;
    Q2 = 4'b1000;
  end

  else 
    begin
     Q1 = {Q1[0],Q1[3:1]};
     Q2 = {~Q2[0],Q2[3:1]};
   end

endmodule 
