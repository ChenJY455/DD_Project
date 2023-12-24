// 检查游戏是否结束，以及是否达成胜利条件 (消除指定数量的某种方块/达到一定分数)
module check(
    input clk,
    input [3:0] time,   // 剩余时间
    input [3:0] step,  // 剩余步数
    input [3:0] score,  // 当前分数
    input [3:0] target // 目标分数
    ouput [2:0] reg game_status // 游戏状态，具体见config.md
    );

endmodule