module DEmux_test;
reg[3:0]Y;
reg[1:0]S;
wire [3:0]A,B,C,D;
mux u1 (A,B,C,D,S,Y);
initial
begin
Y=4'b1000;
S=2'b11;
#10 S =2'b00;
#10 S =2'b01;
#10 S =2'b10;
#10 S =2'b11;
#10 S =2'b00;
#10 S =2'b01;
#10 S =2'b10;
#10 S =2'b11;

end
endmodule
