module testbench;

  reg X1,X2,X3,X4,X5,X6; wire OUT;
  example DUT(OUT(Y),X1(A),X2(B),X3(C),X4(D),X5(E),X6(F));
 
  initial
     begin
     $monitor ($time,"X1=b%, X2=b%, X3=b%, X4=b%, X5=b%, X6=b%, OUT=b%",X1,X2,X3,X4,X5,X6,OUT);
     #5 X1=1; X2=0; X3=0; X4=1; X5=0; X6=0;
     #5 X1=0; X3=1;
     #5 X1=1; X3=0;
     #5 X6=1;
     #5 $finish;

   end
endmodule