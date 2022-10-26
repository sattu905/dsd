module jk_ff_test();
  reg [1:0] jk;
  reg clk;
  wire q,qbar;
  jk_ff JK_FF_INST(jk,clk,q,qbar);
  
  initial begin
    clk = 1'b0;
  end
  always
  #5 clk = ~clk;
  
  
  
  initial begin
    $display("JK Flip-Flop");
    $monitor($time,"jk = %b,clk = %b, q = %b, qbar = %b",jk,clk,q,qbar);
    
    jk = 2'b00;
    #10
    jk = 2'b01;
    #10
    jk = 2'b10;
    #10
    jk = 2'b11;
    #10
    $stop;
  end
endmodule

    
    
