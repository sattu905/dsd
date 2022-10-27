module piso_tb();
  reg ld,clk,rst;
  reg [3:0] in;
  wire q;
  
  
  piso piso_INST(in,ld,clk,rst,q);
  
  initial begin
    clk = 0;
    in = 0;
    ld = 0;
  end
  
  always
  #5 clk = ~clk;
  
  initial begin
    rst = 1;
    #10  rst = 0; ld = 1; in = 4'b0111;
    #10 ld = 0; in = 0;
    #10 $stop;
  end
endmodule