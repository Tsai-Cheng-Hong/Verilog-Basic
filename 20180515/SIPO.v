module SIPO(clock, clear, in, out);
input clock, clear, in;
output [3:0] out;
reg         [3:0] out;

always @(negedge clock)
begin
  if(clear)
  begin
    out = 4'd0;
  end

  else
  begin
    out[3] = out[2];
    out[2] = out[1];
    out[1] = out[0];
    out[0] = in;
  end
end
endmodule
