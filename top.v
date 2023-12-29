module top(

    );

    reg [2:0] board[0:7][0:7], // 当前棋盘
    reg [3:0] x, // 修改单元格的x坐标
    reg [3:0] y, // 修改单元格的y坐标
    reg [2:0] new_board[0:7][0:7], // 新棋盘

endmodule