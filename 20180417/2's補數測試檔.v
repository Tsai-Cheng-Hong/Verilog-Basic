
module Complement_test;
  reg[3:0] D;
  wire[3:0] Q;

  Complement u1 (D,Q);

  initial
  begin
   #800
    $finish;
   end

   initial begin

    D=4'b0000;
    #100;
    D=4'b0001;

    #50;
    D=4'b0010;

    #50;
    D=4'b0011;

    #50;
    D=4'b0100;

    #50;
    D=4'b0101;

    #50;
    D=4'b0110;

    #50;
    D=4'b0111;

    #50;
    D=4'b1000;


    #50;
    D=4'b1001;


    #50;
    D=4'b1010;


    #50;
    D=4'b1011;


    #50;
    D=4'b1100;


    #50;
    D=4'b1101;

    #50;
    D=4'b1110;


    #50;
    D=4'b1111;

   

 
 end

endmodule
