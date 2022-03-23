module mux(A,B,C,D,S,Y2);
input [3:0]A,B,C,D;
input [1:0]S;
output[3:0]Y2;
reg   [3:0]Y2;

always@(A or B or C or D or S)
     if (S==2'b00) Y2=A;
else if (S==2'b01) Y2=B;
else if (S==2'b10) Y2=C;
else               Y2=D;

endmodule
