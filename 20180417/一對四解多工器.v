module mux(A,B,C,D,S,Y);
input  [3:0]Y;
input  [1:0]S;
output [3:0] A, B, C, D;
reg    [3:0] A, B, C, D;

always@(Y or S)
 if (S == 2'b00) begin A = Y; B=0; C=0; D=0; end
else if (S == 2'b01) begin B = Y; A=0; C=0; D=0; end
else if (S == 2'b10) begin C = Y; A=0; B=0; D=0; end
else  begin D = Y;  A=0; B=0; C=0; end

endmodule
