module mux2_1
(
input wire in1,
input wire in2, 
input wire sel,

output reg out
);

always@(*) //*为通配符，表示只要if括号中的条件或赋值号右边的变量发生变化则立即执行下面的代码
if (sel == 1'b1)
out = in1;
else
out = in2;

endmodule
