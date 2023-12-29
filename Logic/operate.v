// select：选中一个单元
// confirm：确认选中的单元。进行消除操作
// 在选中一个单元之后，寻找与它相邻的同色单元，将它们标记为待确认删除的状态
module operate(
    input clk,
    input [2:0] board[0:7][0:7], // 当前棋盘
    input [3:0] x, // 光标所在的单元格的x坐标
    input [3:0] y, // 光标所在的单元格的y坐标
    input selected, // 操作前是否选中
    output [2:0]reg new_board[0:7][0:7], // 新棋盘
    );

endmodule