module t_ff(t,clk,q,qbar);
  input t,clk;
  output reg q,qbar;
  always @ (posedge clk)
  begin
    case(t)
      1'b0: q = 1;
      1'b1: q = 0;
    endcase
    qbar = ~q;
  end
endmodule
