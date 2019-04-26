module echeck(b,out,error);
input [7:1]b;
output [7:1]out;
output error;
reg e1;
reg [7:1]out1;
always@(b)
begin
e1<=(b[1]^b[2]^b[4])+(b[2]^b[3]^b[5])+(b[3]^b[4]^b[6])+(b[4]^b[5]^b[7])+(b[1]^b[5]^b[6])+(b[2]^b[6]^b[7])+(b[1]^b[3]^b[7]);

if(e1==0)
begin 
 out1<=b;
end
else
begin
out1<=b;
end
end
assign error=e1;
assign out=out1;

endmodule
