module a_problem_case(A,B,C,f1,f2);
   input A, B, C;
   output f1, f2;
   wire A,B,C;
   reg f1,f2;
   always @(A or B or C)
   begin
     f2=f1^f2;
     f1=~(A&B);
   end
endmodule