module div10_test;
  reg Clk_i;
  reg Clr;
  wire Clk_o;

  div10 d1(Clk_i,Clr,Clk_o);
  initial
  begin

  Clk_i =  1'b1;
  Clr   =  1'b1;
  #20 Clr =  1'b0;

 end
 always #10 Clk_i = ~Clk_i;
 initial
  #1000000 $finish;
  endmodule
