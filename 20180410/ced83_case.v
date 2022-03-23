
module dec38_case (Q,D);
input [7:0] Q;
output[2:0] D;
reg   [2:0] D;

always@ (Q)
  case(Q)
    8'b00000000 : D = 3'b000;
    8'b00000001 : D = 3'b001;
    8'b00000010 : D = 3'b010;
    8'b00000100 : D = 3'b011;
    8'b00001000 : D = 3'b100;
    8'b00010000 : D = 3'b101;
    8'b00100000 : D = 3'b110;
    8'b01000000 : D = 3'b111;
     default : D =8'b10000000;
   endcase


 endmodule
