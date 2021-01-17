initial 
  begin
   $monitor ($time, "a=%4d, b=%4d, c=%4d, d=%4d," a, b, c, d);
   a = 30; b = 20; c = 15; d = 5;
   clock = 0;
   forever #5 clock = ~clock;
  end
 
initial 
  #100 $finish;
endmodule