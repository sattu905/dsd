module pipotb();
  reg clk,rst;
  reg [3:0] in;
  wire [3:0] q;
  pipo PIPO_INST(in,clk,rst,q);
  
  initial begin
    clk = 0;
    in = 0;
    rst = 0;
  end
  always
  #5 clk = ~clk;
    
  initial 
    begin
      rst =1;
      #10 rst = 0; in=4'b0000;
      #10 rst = 0; in=4'b0010;
      #10 rst = 0; in=4'b0100;
      #10 rst = 0; in=4'b0110;
      #10 rst = 0; in=4'b1000;
      #10 rst = 0; in=4'b1010;
      #10 rst = 0; in=4'b1100;
      #10 rst = 0; in=4'b1110;
    end
endmodule  