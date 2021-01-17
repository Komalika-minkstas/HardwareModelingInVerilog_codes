//An 8-bit adder description

module parallel_adder (sum,coun=t,in1,in2,cin);
  
   input [7:0] in1,in2;
   input cin;
   output [7:0] sum;
   output cout;

   assign #20{cout,sum} = in1+in2+cin;

endmodule