module pseudonor_test;

  reg in1, in2;
  wire out;
  integer k;

  cmosnand MYNOR2 (in1, in2, out);

  initial
    begin
     for (k=0; k<4; k=k+1)
      begin
       #5 {in1, in2} = k;
       $display ("In1 = %b, In2 = %b, Out: %b", in1, in2, out);
     end
   end

endmodule