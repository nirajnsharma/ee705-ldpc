module bn(min,bout,clk);
input clk;
input [7:1] min;
output[7:1]bout;

 cnn ca(min,bout,clk);
endmodule