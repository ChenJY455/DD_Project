// 初始的时候随机生成一个大小为8*8的棋盘，并用各种颜色单元填充

// TODO:随机模块，还要保证生成的棋盘没有可以消除的棋子
module generator(
    input clk,
    input fresh, // 是否产生新棋盘
    output [2:0]reg new_board[0:7][0:7]; // 新棋盘
    output reg generated // 是否产生了新棋盘
    );

endmodule