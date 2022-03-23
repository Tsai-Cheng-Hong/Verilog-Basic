module plus3_counter_test;
  reg clk;
  reg reset;
  wire [7:0] out;

  plus3_Counter d1(clk,reset,out);
  initial
    begin
      clk = 1'b1;
      reset = 1'b1;
      #5 reset= 1'b0;
   end
   always #10 clk = ~clk;
 initial
   #100000 $finish;
 endmodule
