module testbench;
    reg a, b, c; wire sum, cout;
    full_adder FA (sum, cout, a, b, c);
   
    initial
      begin
       a=0; b=0; c=1; #5;
       $display ("T=%2d, a=%b, b=%b, c=%b, sum=%b, cout=%b", $time, a, b, c, sum, cout);
       b=1; #5;
       $display ("T=%2d, a=%b, b=%b, c=%b, sum=%b, cout=%b", $time, a, b, c, sum, cout);
       a=1; #5;
       $display ("T=%2d, a=%b, b=%b, c=%b, sum=%b, cout=%b", $time, a, b, c, sum, cout);
       a=0; b=0; c=0; #5;
       $display ("T=%2d, a=%b, b=%b, c=%b, sum=%b, cout=%b", $time, a, b, c, sum, cout);
       #5 $finish;
     end
endmodule