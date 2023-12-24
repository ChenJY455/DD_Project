// 在七段数码管上显示分数
// 在另一个数码管上显示剩余步数/时间

module displayNum(
    input clk,
    input [3:0] score,
    input [3:0] step,
    input [3:0] time,
    output [6:0] reg [3:0] seg,
    output [3:0] reg [3:0] an,
    output [3:0] reg [3:0] seg2,
    output [3:0] reg [3:0] an2
    );

endmodule