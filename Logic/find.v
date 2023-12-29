// 输入一个5*5的棋盘，然后检测是否有三个及以上相连的棋子
// TODO: 可能需要padding

module find(
    input [2:0] reg board[0:4][0:4], // 当前棋盘
    output reg [2:0] reg new_board[0:4][0:4] // 新棋盘
    output reg 
)

    reg [2:0] center = board[2][2];
    reg [1:0] up = 0;
    reg [1:0] down = 0;
    reg [1:0] left = 0;
    reg [1:0] right = 0;
    always @(*) begin
        if(center == 0) begin
            // Do nothing
        end
        else begin
            if(board[0][2] == center && board[1][2] == center)   up = 2;
            if(board[0][2] != center && board[1][2] == center)   up = 1;
            if(board[3][2] == center && board[4][2] == center)   down = 2;
            if(board[3][2] == center && board[4][2] != center)   down = 1;
            if(board[2][0] == center && board[2][1] == center)   left = 2;
            if(board[2][0] != center && board[2][1] == center)   left = 1;
            if(board[2][3] == center && board[2][4] == center)   right = 2;
            if(board[2][3] == center && board[2][4] != center)   right = 1;
        end

        if(up + down >= 2)  begin
            if(up == 2) begin
                new_board[0][2] = 0;
                new_board[1][2] = 0;
            end
            if(down == 2) begin
                new_board[3][2] = 0;
                new_board[4][2] = 0;
            end
            if(up == 1) begin
                new_board[1][2] = 0;
            end
            if(down == 1) begin
                new_board[3][2] = 0;
            end
        end
        if(left + right >= 2) begin
            if(left == 2) begin
                new_board[2][0] = 0;
                new_board[2][1] = 0;
            end
            if(right == 2) begin
                new_board[2][3] = 0;
                new_board[2][4] = 0;
            end
            if(left == 1) begin
                new_board[2][1] = 0;
            end
            if(right == 1) begin
                new_board[2][3] = 0;
            end
        end
        
    end

endmodule