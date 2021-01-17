integer a, b, c;

initial
  begin
    a = 10; b = 20; c = 15;
  end

initial
  begin
   a <= #5 b + c;
   b <= #5 a + 5;
   c <= #5 a - b;
 end