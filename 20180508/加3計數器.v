module plus3_Counter(clock,reset,out);
input clock, reset;
output [7:0] out;
reg [7:0] out;

always @(posedge clock)
begin
      if (reset)
      begin
            out = 8'd3;
      end

      else if (out == 8'd63)
      begin
            out = 8'd3;
      end
      
      else
      begin
            out = out + 8'd3;
      end
end

endmodule
