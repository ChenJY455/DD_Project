// �??测是否有已经消除的棋子，如果有，并将上方的棋子下移填补空缺�??
// 如果�??整列都消除了，那么将右边的棋子全部左移一�??

module refresh(
    input wire [191:0] board, // 当前棋盘
    output wire [191:0] new_board // 新棋�??
    );
    reg [2:0] board0[7:0][7:0];
    reg [2:0] new_board0[7:0][7:0];
    reg flag[7:0];
    reg [3:0] num[7:0];
    integer i, j, k;
    reg [3:0] right;
    reg  flag1;
    initial begin
        right = 8;
    end
    // rand = {$random($get_initial_random_seed())} % 7;
    always @(*) begin
        for (i = 0; i < 8; i = i + 1) begin
            for (j = 0; j < 8; j = j + 1) begin
                new_board0[i][j] = board[(8 * i + j) * 3 +: 3];
            end 
        end 
        for (j = 0; j < right; j = j + 1) begin
            num[j] = 0;
            for (i = 7; i >= 0; i = i - 1) begin
                if (new_board0[i][j] == 0) begin
                    //new_board0[i][j] = 0;
                    num[j] = num[j] + 1;
                    flag1 = 0;
                    for (k = i - 1; k >= 0; k = k - 1) begin
                        if(new_board0[k][j] != 0 && flag1 == 0) begin
                            new_board0[i][j] = new_board0[k][j];
                            new_board0[k][j] = 0;
                            flag1 = 1;
                        end
                    end
                end
            end
            if (num[j] == 8) begin
                for (i = j + 1; i < right; i = i + 1) begin
                    for (k = 0; k < 8; k = k + 1) begin
                        new_board0[k][i - 1] = new_board0[k][i];
                    end
                end
                for (k = 0; k < 8; k = k + 1) begin
                    new_board0[k][7] = 0;
                end
                right = right - 1;
                j = j - 1;
            end
            
        end
    end
    genvar m, n;
    generate for (m = 0; m < 8; m = m + 1) begin
        for (n = 0; n < 8; n = n + 1) begin
            assign new_board[(8 * m + n) * 3 +: 3] = new_board0[m][n];
        end 
    end endgenerate
    // always @(posedge clk) begin rand_num <= $random(seed); end
endmodule