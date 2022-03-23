module div500_test;
  reg clk;
  reg reset;
  wire [7:0] a;

  div500 d1(clk,reset,out,a);
  initial
  begin
  clk =  1'b1;
  reset   =  1'b0;
  #15 reset =  1'b1;
 end
 always #10 clk = ~clk;
 
 initial
  #1000000 $finish;
  endmodule
