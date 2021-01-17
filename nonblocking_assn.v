module nonblocking_assn;

 integer a, b, c, d;

 reg clock
 
 always @ (posedge clock)
   begin
    a <= b + c;
    d <= a - 3;
    b <= d + 10;
    c <= c + 1;
  end
endmodule