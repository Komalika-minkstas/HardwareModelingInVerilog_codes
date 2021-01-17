//swap using blocking assn
always @ (posedge clk)
 begin
  a = b;
  b = a;
 end