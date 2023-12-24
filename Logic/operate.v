// select：选中一个单元
// shift_up：将选中的单元格与上方的单元格交换
// shift_down：将选中的单元格与下方的单元格交换
// shift_left：将选中的单元格与左方的单元格交换
// shift_right：将选中的单元格与右方的单元格交换

module operate(
    input clk,
    input [2:0] board[0:7][0:7], // 当前棋盘
    input [3:0] x, // 光标所在的单元格的x坐标
    input [3:0] y, // 光标所在的单元格的y坐标
    input selected, // 操作前是否选中
    input [3:0] operate, // 操作，具体见config.md
    output [2:0]reg new_board[0:7][0:7], // 新棋盘
    output reg select, // 操作后是否被选中
    output reg moved // 是否移动了
    );

endmodule