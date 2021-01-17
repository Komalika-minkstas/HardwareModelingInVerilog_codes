module fulladder_test;

  reg a, b, c;
  wire s, cout;
  integer correct;

  full_adder FA (s, cout, a, b, c);

  initial 
    begin
     correct = 1;

     #5 a=1; b=1; c=0; #5;
         if ((s!=0) || (cout!=1))
           correct = 0; 
     #5 a=1; b=1; c=1; #5;
         if ((s!=0) || (cout!=1))
           correct = 0; 
     #5 a=0; b=1; c=0; #5;
         if ((s!=0) || (cout!=1))
           correct = 0; 
     #5 $display ("%d", correct);
   end
endmodule