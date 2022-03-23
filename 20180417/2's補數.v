
module Complement (D,Q);
input [3:0] D;
output[3:0] Q;
reg   [3:0] Q;

always@(D)
begin
  if       (D==4'b0000) Q=4'b0000;
  else if  (D==4'b0001)   Q = 4'b1111;
  else if  (D==4'b0010)   Q = 4'b1110;
  else if  (D==4'b0011)   Q = 4'b1101;
  else if  (D==4'b0100)   Q = 4'b1100;
  else if  (D==4'b0101)   Q = 4'b1011;
  else if  (D==4'b0110)   Q = 4'b1010;
  else if  (D==4'b0111)   Q = 4'b1001;
  else if  (D==4'b1001)   Q = 4'b0111;
  else if  (D==4'b1010)   Q = 4'b0110;
  else if  (D==4'b1011)   Q = 4'b0101;
  else if  (D==4'b1100)   Q = 4'b0100;
  else if  (D==4'b1101)   Q = 4'b0011;
  else if  (D==4'b1110)   Q = 4'b0010;
    else Q = 4'b0001;
end
 endmodule
