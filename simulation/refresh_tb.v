/*
module refresh(
    input clk,
    input [191:0] board, // 当前棋盘
    output reg[191:0] new_board // 新棋�??
    );
*/
`timescale 1ns/1ns
module refresh_tb();
    reg [191:0] board;
    wire [191:0] new_board;

    refresh uut (
        .board(board),
        .new_board(new_board)
    );
    integer i, j;
//    always @(*) begin
//        board = new_board;
//    end
    initial begin
        for(i = 0; i < 8; i = i + 1) begin
            for(j = 0; j < 8; j = j + 1) begin
                board[(i * 8 + j) * 3 +: 3] = i;
            end
        end 
        #50;
        for(i = 0; i < 8; i = i + 1) begin
             board[(i * 8 + 4) * 3 +: 3] = 0;
        end 
        for(i = 0; i < 8; i = i + 1) begin
             board[(4 * 8 + i) * 3 +: 3] = 0;
        end 
        #50;
        
        board = new_board;
    end

endmodule
