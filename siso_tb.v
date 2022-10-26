module siso_tb();
  reg clk,in,rst;
  wire q;
  
  siso SISO_INST(clk,in,rst,q);
  
  initial begin
    clk = 1;
  end
  always
  #5 clk = ~clk;
  
  initial begin
    $monitor($time,"clk = %b, rst = %b, in = %b, q = %b",clk,rst,in,q);
    rst = 1;
    
    #10 rst = 0; in = 0;
    #10 in = 1;
    #10 in = 1;
    #10 in = 0;
    #10 $stop;
  end
endmodule
