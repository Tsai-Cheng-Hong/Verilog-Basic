module detector2(clock, clear, in, out, q);
input clock, clear, in;
output q;
output [1:0] out;
reg [1:0] out;
reg q;

always @(posedge clock)
begin 
      if(clear)
      begin
            out=2'd0;
      end

      else
      begin

        out[1] = out[0];
        out[0] = in;
      end
end
always @(out)
if(out==2'b10) q=1;
else        q=0;
endmodule
