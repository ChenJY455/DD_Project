// 随机生成一个大小为8*8的棋盘，并用各种颜色单元填充，保证没有三个或三个以上相同颜色的单元相连
// 如果没有可以消除的也调用改模块，保证有可以消除的棋盘

// TODO:随机模块，还要保证生成的棋盘没有可以消除的棋子
module generator(
    input clk,
    input fresh, // 是否产生新棋盘
    output [2:0]reg new_board[0:7][0:7]; // 新棋盘
    output reg generated // 是否产生了新棋盘
    );

endmodule