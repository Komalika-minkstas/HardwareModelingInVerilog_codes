module reg_maps_to_wire(A,B,C,f1,f2);
   input A, B, C;
   output f1, f2;
   wire A,B,C;
   reg f1,f2;
   always @(A or B or C)
   begin
     f1=~(A&B);
     f2=f1^C;
   end
endmodule