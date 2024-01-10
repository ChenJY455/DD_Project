// 初始的时候随机生成一个大小为8*8的棋盘，并用各种颜色单元填充

module generator(
    input clk,
    input fresh, // 是否产生新棋�?
    output [191:0] new_board, // 新棋�?
    output if_generated // 是否产生了新棋盘
    );

    reg [191:0] new_board_reg;
    reg if_generated_reg;
    integer i, j;
//    wire is_generating = if_generated_reg;

    always @(posedge clk) begin:generate_block
        if (fresh == 1) begin
            
                if_generated_reg <= 1'b1;
                for(i = 0; i < 8; i = i + 1) begin
                    for(j = 0; j < 8; j = j + 1) begin
                        // 1 ~ 6 
//                         new_board_reg[i][j] = {$random} % 6 + 1;
                        if(j == 4) new_board_reg[(8 * (i) + j) * 3 +: 3] <= j;
                        else new_board_reg[(8 * (i) + j) * 3 +: 3] <= i % 6 + 1;
                    end
                end
        end
        else
            if_generated_reg <= 1'b0;
    end
    
    assign if_generated = if_generated_reg;
    assign new_board = new_board_reg;
endmodule