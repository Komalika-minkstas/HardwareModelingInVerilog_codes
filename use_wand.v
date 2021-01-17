module use_wand (A,B,C,D,f);

input A,B,C,D;
output f;
wand f;

//net f declared as 'wand'

assign f=A&B;
assign f=C|D;

endmodule