module Down_Counter(clock,reset,out);
input clock, reset;
output [3:0] out;
reg [3:0] out;

always @(posedge clock)
begin
      if (reset)
      begin
            out = 4'd15;
      end

      else if (out == 4'd0)
      begin
            out = 4'd15;
      end
      
      else
      begin
            out = out - 1'd1;
      end
end

endmodule
