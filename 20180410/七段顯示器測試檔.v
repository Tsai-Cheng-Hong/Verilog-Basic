
module T;
  reg[3:0] Q;
  wire[6:0] D;

  dec49_case u1 (Q,D);

  initial
  begin
   #800
    $finish;
   end

   initial begin

    Q = 4'b0000;
    #100;
    Q = 4'b0001;

    #50;
    Q = 4'b0010;

    #50;
    Q = 4'b0011;

    #50;
    Q = 4'b0100;

    #50;
    Q = 4'b0101;

    #50;
    Q = 4'b0110;

    #50;
    Q = 4'b0111;

    #50;
    Q = 4'b1000;

    #50;
    Q = 4'b1001;


  end
 

endmodule
