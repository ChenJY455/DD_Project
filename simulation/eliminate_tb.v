/*
module eliminate(
    input clk, // 时钟信号
    input [2:0] board[0:7][0:7], // 当前棋盘
    input [3:0] x, // 光标�?????在的单元格的x坐标
    input [3:0] y, // 光标�?????在的单元格的y坐标
    input confirm, // 操作前是否确�?????
    output [2:0]reg new_board[0:7][0:7], // 新棋�?????
    );
*/
`timescale 1ns/1ns
module eliminate_tb();
    // Testbench code goes here
    reg [191:0] board;
    reg [3:0] x;
    reg [3:0] y;
    reg confirm;
    reg [6:0] score;
    wire [191:0] new_board;
    wire [6:0] new_score;
    integer i, j;

    eliminate uut(
        .clk(),
        .board(board),
        .x(x),
        .y(y),
        .confirm(confirm),
        .score(score),
        .new_board(new_board),
        .new_score(new_score),
        .eliminated()
    );
    always @(new_board)
        board = new_board;
    always @(new_score)
        score = new_score;
    initial begin
        score = 6'b0;
        //board = 192'h111111112222222233333333;
    end
    initial begin
        for(i = 0; i < 8; i = i + 1) begin
            for(j = 0; j < 8; j = j + 1) begin
                board[(i * 8 + j) * 3 +: 3] = i;
            end
        end 
        x <= 4'b0000;
        y <= 4'b0000;
        confirm = 1'b0;
        #200;
        confirm = 1'b1;
        #50;
        x = 4'b0001;
        y = 4'b0011;
        confirm = 1'b0;
        #200;
        confirm = 1'b1;
        #50;
        x = 4'b0010;
        y = 4'b0101;
        confirm = 1'b0;
        #200;
        confirm = 1'b1;
        #50;
    end
endmodule

