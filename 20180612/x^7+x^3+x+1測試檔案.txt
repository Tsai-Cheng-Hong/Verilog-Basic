module div500_test;
  reg Clk;
  reg Clr;
  wire [7:1] Q;

  lfsr d1(Clk,Clr,Q);
  initial
  begin
 Clk =  1'b1;
  Clr   =  1'b1;
  #15 Clr =  1'b0;
 end
 always #10 Clk = ~Clk;
 
 initial
  #1000000 $finish;
  endmodule
