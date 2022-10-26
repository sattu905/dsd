module t_ff_test();
  reg t,clk;
  wire q,qbar;
  
  t_ff T_FF_INST(t,clk,q,qbar);
  
  initial begin
    clk = 1'b0;
  end
  always
  #5 clk = ~clk;
  
  initial begin
    $display("T Flip-Flop");
    $monitor($time, "t = %b, clk = %b, q = %b, qbar = %b",t,clk,q,qbar);
    
    t = 0;
    #10
    t = 1;
    #10
    t = 0;
    #10
    t = 1;
    #10
    $stop;
  end
endmodule
    
