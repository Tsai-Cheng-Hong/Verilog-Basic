
module dec49_case (Q,D);
input [3:0] Q;
output[6:0] D;
reg   [6:0] D;

always@ (Q)
  
if    (Q==4'b0000)  D = 7'b1111110;
else if     (Q==4'b0001)  D = 7'b0110000;
else if     (Q==4'b0010)  D = 7'b1101101;
else if     (Q==4'b0011)  D = 7'b1111001;
else if     (Q==4'b0100)  D = 7'b0110011;
else if     (Q==4'b0101)  D = 7'b1011011;
else if     (Q==4'b0110)  D = 7'b1011111;
else if     (Q==4'b0111)  D = 7'b1110010;
else if     (Q==4'b1000)  D = 7'b1111111;
else        D = 7'b1111011;
  


 endmodule
