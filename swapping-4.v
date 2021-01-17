//correct way to swap using blocking assn
always @ (posedge clk)
 begin
  ta = a;
  tb = b;
  a = tb;
  b = ta;
end