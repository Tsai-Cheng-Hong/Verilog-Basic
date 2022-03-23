module Accumulator(clock, reset, in, out);
input clock, reset;
input [3:0] in;
output [3:0] out;
reg         [3:0] out;

always @(posedge clock)
begin
  if(reset)
  begin
    out = 4'd0;
  end

  else
  begin
    out = out + in;
  end
end

endmodule
