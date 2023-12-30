// 初始的时候随机生成一个大小为8*8的棋盘，并用各种颜色单元填充

module generator(
    input fresh, // 是否产生新棋盘
    output [191:0] new_board, // 新棋盘
    output if_generated // 是否产生了新棋盘
    );

    reg [2:0] new_board_reg[0:7][0:7];
    reg if_generated_reg;
    integer i, j;

    initial begin
        if (fresh) begin
            for(i = 0; i < 8; i = i + 1) begin
                for(j = 0; j < 8; j = j + 1) begin
                    // 1 ~ 6 
                    new_board_reg[i][j] <= {{$random} % 6 + 1};
                end
            end
            if_generated_reg <= 1'b1;
        end
    end

    always @(fresh) begin:generate_block
        if (fresh) begin
            for(i = 0; i < 8; i = i + 1) begin
                for(j = 0; j < 8; j = j + 1) begin
                    // 1 ~ 6 
                    new_board_reg[i][j] <= {{$random} % 6 + 1};
                end
            end
            if_generated_reg <= 1'b1;
        end
        else
            if_generated_reg <= 1'b0;
    end
    
    assign if_generated = if_generated_reg;
    genvar m, n;
    generate for (m = 0; m < 8; m = m + 1) begin
        for (n = 0; n < 8; n = n + 1) begin
            assign new_board[(8 * m + n) * 3 +: 3] = new_board_reg[m][n];
        end 
    end endgenerate
endmodule