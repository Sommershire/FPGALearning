module counter
#(
parameter CNT_MAX = 25'd24_999_999
)
(
input wire sys_clk,
input wire sys_rst_n,

output reg led_out
);

always @(posedge sys_clk or negedge sys_rst_n) begin
if(sys_rst_n == 1'b0)
cnt <= 25'b0;
else if(cnt == CNT_MAX)
cnt <= 25'b0;
else
cnt <= cnt + 1'b1;
end

always@(posedge sys_clk or negedge sys_rst_n)
if(sys_rst_n == 1'b0)
cnt_flag <= 1'b0;
else if(cnt == CNT_MAX)
cnt_flag <= 1'b1;
else
cnt_flag <= 1'b0;

always@(posedge sys_clk or negedge sys_rst_n)
if(sys_rst_n == 1'b0)
led_out <= 1'b0;
else if(cnt_flag == 1'b1)
led_out <= ~led_out;

endmodule