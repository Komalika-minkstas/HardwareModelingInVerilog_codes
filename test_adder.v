module test_adder;
  reg [7:0] a, b;
  wire [7:0] sum; wire cout;
  integer myseed;

  adder ADD (sum, cout, a, b);
  initial myseed = 15;

  initial
    begin
     repeat (5)
       begin
        a=$random(myseed); 
        b=$random(myseed); #10
        $display ("T: %3d, a: %h, b: %h, sum: %h", $time, a, b, sum);
       end
    end
endmodule