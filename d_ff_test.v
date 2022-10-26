module d_ff_test();
  reg d,clk;
  wire q,qbar;
  
  d_ff D_FF_INST(d,clk,q,qbar);
  
  initial begin
    clk = 1'b0;
  end
  
  always
  #5 clk = ~clk;
  
  initial begin
    $display("D Flip-Flop");
    $monitor($time ,"d = %b,clk = %b, q = %b, qbar = %b",d,clk,q,qbar);
    d = 1'b0;
    #10
    d = 1'b1;
    #10
    
    d = 1'b0;
    #10
    d = 1'b1;
    #10
    $stop;
  end
endmodule
