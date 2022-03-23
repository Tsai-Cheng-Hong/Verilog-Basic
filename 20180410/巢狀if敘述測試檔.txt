
module Compare_Test;
  reg A;
  reg B;
  wire AgB;
  wire AeB;
  wire AlB;

  compare u1(A,B,AgB,AeB,AlB);

  initial
  begin
    #1000
   $finish;
  end

  initial begin

    A = 1'b0;
    B = 1'b0;
    
    #100;
    A = 1'b1;

    #100;
    A = 1'b0;
    B = 1'b1;

    #100;
    A = 1'b1;
  end

endmodule
