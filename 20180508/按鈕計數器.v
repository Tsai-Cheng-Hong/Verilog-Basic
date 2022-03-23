module udcounter(reset, up, clock, count);
input reset;
input up;
input clock;
output [3:0] count;
reg [3:0] count;
always @(posedge clock)
begin
      if (reset)
      count=4'b0000;
      else if (up)
      begin
      if(count==4'b1001)
      count=4'b0000;
      else
      count=count+1;
      end
    else
      begin
      if(count==4'b0000)
      count=4'b1001;
      else
      count=count-1;
      end
end

endmodule
