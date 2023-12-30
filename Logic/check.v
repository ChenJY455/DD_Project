// �?查游戏是否结束，以及是否达成胜利条件 (达到�?定分�?/无法消除)
module check(
    input clk,
    input [3:0] score,  // 当前分数
    input [3:0] target, // 目标分数
    output [2:0] game_status // 游戏状�?�，具体见config.md
    );

endmodule