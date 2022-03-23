module Accumulator_test;
  reg clock;
  reg reset;
  reg [3:0]in;
  wire [3:0] out;

  Accumulator d1(clock, reset, in, out);
  initial
    begin
      in=1'd0;
      clock = 1'b1;
      reset = 1'b1;
      #5 reset= 1'b0;
      #10 in[3:0]=4'd1;
      #300 in[3:0]=4'd2;
      #300 in[3:0]=4'd3;
   end
   always #10 clock = ~clock;
 initial
   #100000 $finish;
 endmodule
