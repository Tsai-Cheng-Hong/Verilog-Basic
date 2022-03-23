module detector16_ifr(clock,clear,in,out,q,cnt,fr);
input clock,clear,in;
output q;
output fr;
output [15:0] out;
output [2:0] cnt;
reg [15:0]out;
reg q;
reg fr;
reg [2:0] cnt;

always @(posedge clock)
begin
  if (clear)
  begin
      out = 16'd0;
      cnt = 3'd0;
  end

  else  
begin
  out[5] = out[4];
  out[4] = out[3];
  out[3] = out[2];
  out[2] = out[1];
  out[1] = out[0];
  out[0] = in;
  end
end

always @(out)
begin
    if (out==6'b110001)
    begin
      q=1;

      end
      else
 begin
      q=0;

      end
     end

    always @(posedge q)
           begin
           cnt[2] = cnt[1];
           cnt[1] = cnt[0];
           cnt[0] = q;
     end

always @(cnt)
begin
    if (cnt==3'b111)
    begin
      fr=1;

      end
      else
 begin
      fr=0;

      end
     end



    endmodule
