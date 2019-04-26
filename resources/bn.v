module bn(i1,i2,i3,o1);
input i1,i2,i3;
output  o1;
reg a1;
a1=(i2&i3)+(i1&i3)+(i1&i2);
if(a1==1)
begin 
assign o1=1;
end
else 
begin 
assign o1=0;
end
endmodule