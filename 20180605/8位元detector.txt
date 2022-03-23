module detector2(clock, clear, in, out, q);
input clock, clear, in;
output q;
output [7:0] out;
reg [7:0] out;
reg q;

always @(posedge clock)
begin 
      if(clear)
      begin
            out=8'd0;
      end

      else
      begin

out[7] = out[6];
out[6] = out[5];
out[5] = out[4];
out[4] = out[3];
        out[3] = out[2];
        out[2] = out[1];
        out[1] = out[0];
        out[0] = in;
      end
end
always @(out)
if(out==8'b11010010) q=1;
else        q=0;
endmodule
