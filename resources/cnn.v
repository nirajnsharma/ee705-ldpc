module cnn(b,cout,clk );
input [7:1]b;
input clk;
reg[8:1]cn1;
reg[8:1]cn2;
output[7:1]cout;
reg [7:1]c;
reg [7:1]M[3:1];
reg[7:1]M1;
function  [8:1]cn;
input [7:1] b;
begin
M[1][1]=b[2]^b[4];
M[1][2]=b[1]^b[4];
M[1][4]=b[1]^b[2];
M[1][3]=b[2]^b[5];
M[2][2]=b[3]^b[5];
M[1][5]=b[2]^b[3];
M[2][3]=b[4]^b[6];
M[1][6]=b[3]^b[4];
M[1][7]=b[4]^b[5];
M[2][4]=b[3]^b[6];
M[3][4]=b[5]^b[7];
M[2][5]=b[4]^b[7];
M[2][1]=b[5]^b[6];
M[3][5]=b[1]^b[6];
M[2][6]=b[1]^b[5];
M[3][2]=b[6]^b[7];
M[3][6]=b[2]^b[7];
M[2][7]=b[2]^b[7];
M[3][1]=b[3]^b[7];
M[3][3]=b[1]^b[7];
M[3][7]=b[1]^b[3];
M1[1]=(M[2][1] & M[3][1]) | (M[1][1] & M[3][1]) |( M[1][1] & M[3][1]);
M1[2]=(M[2][2]& M[3][2]) | (M[1][2] & M[3][2]) |( M[1][2] & M[3][2]);
M1[3]=(M[2][3] & M[3][3]) | (M[1][3] & M[3][3]) |( M[1][3] & M[3][3]);
M1[4]=(M[2][4] & M[3][4]) | (M[1][4] & M[3][4]) |( M[1][4] & M[3][4]);
M1[5]=(M[2][5] & M[3][5]) | (M[1][5] & M[3][5]) |( M[1][5] & M[3][5]);
M1[6]=(M[2][6] & M[3][6]) | (M[1][6] & M[3][6]) |( M[1][6] & M[3][6]);
M1[7]=(M[2][7] & M[3][7]) |(M[1][7] & M[3][7]) |( M[1][7] & M[3][7]);
if(M1[1]==b[1])
begin
 c[1]=b[1];
end
else
begin
 c[1]=M1[1];
end 
if(M1[2]==b[2])
begin
 c[2]=b[2];
end
else
begin
 c[2]=M1[2];
end
if(M1[3]==b[3])
begin
 c[3]=b[3];
end
else
begin
 c[3]=M1[3];
end
if(M1[4]==b[4])
begin
c[4]=b[4];
end
else
begin
c[4]=M1[4];
end
if(M1[5]==b[5])
begin
 c[5]=b[5];
end
else
begin
 c[5]=M1[5];
end
if(M1[6]==b[6])
begin
 c[6]=b[6];
end
else
begin
 c[6]=M1[6];
end
if(M1[7]==b[7])
begin
 c[7]=b[7];
end
else
begin
 c[7]=M1[7];
end

 cn[1]=c[1];
 cn[2]=c[2];
 cn[3]=c[3];
cn[4]=c[4];
cn[5]=c[5];
cn[6]=c[6];
 cn[7]=c[7];
 cn[8]=(cn[1]^cn[2]^cn[4])|(cn[2]^cn[3]^cn[6])|(cn[3]^cn[4]^cn[6])|(cn[4]^cn[5]^cn[7])|(cn[1]^cn[5]^cn[6])|(cn[2]^cn[6]^cn[7])|(cn[1]^cn[3]^cn[7]);

end
endfunction
always @(posedge clk)
begin
cn1<=cn(b);
if(cn1[8]==0)
 begin
 cn2[7:1]=cn1[7:1];
end
else
begin
cn2=cn(cn1[7:1]);
end
end
assign cout=cn2[7:1];
endmodule