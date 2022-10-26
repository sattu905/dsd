module d_ff(d,clk,q,qbar);
  input d,clk;
  output reg q,qbar;
  
  always @ (posedge clk)
  begin
    case(d)
      1'b0: q = 0;
      1'b1: q = 1;
    endcase
    qbar = ~q;
  end
endmodule

