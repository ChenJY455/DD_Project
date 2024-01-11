// 初始的时候随机生成一个大小为8*8的棋盘，并用各种颜色单元填充

module generator(
    input clk,
    input fresh, // 是否产生新棋�??
    output [191:0] new_board, // 新棋�??
    output if_generated // 是否产生了新棋盘
    );

    reg [191:0] new_board_reg;
    reg if_generated_reg;
    integer i, j;
    reg [31:0] rand[5:0];
//    wire is_generating = if_generated_reg;
    wire [191:0] my_rand = {rand[3], rand[5], rand[0], rand[2], rand[1], rand[4]};
    initial begin
        rand[0] <= 44;
        rand[1] <= 4;
        rand[2] <= 11;
        rand[3] <= 21;
        rand[4] <= 45;
        rand[5] <= 89;
    end
    always @(posedge clk) begin
        if(rand[0] == 32'hffffffff) begin
            rand[0] <= 0;
        end
        else begin
            rand[0] <= rand[0] + 9;
        end
        if(rand[1] == 32'hffffffff) begin
            rand[1] <= 0;
        end
        else begin
            rand[1] <= rand[1] + 3;
        end
        if(rand[2] == 32'hffffffff) begin
            rand[2] <= 0;
        end
        else begin
            rand[2] <= rand[2] + 5;
        end
        if(rand[3] == 32'hffffffff) begin
            rand[3] <= 0;
        end
        else begin
            rand[3] <= rand[3] + 7;
        end
        if(rand[4] == 32'hffffffff) begin
            rand[4] <= 0;
        end
        else begin
            rand[4] <= rand[4] + 11;
        end
        if(rand[5] == 32'hffffffff) begin
            rand[5] <= 0;
        end
        else begin
            rand[5] <= rand[5] + 13;
        end

    end

    always @(posedge clk) begin:generate_block
        if (fresh == 1) begin
            
                if_generated_reg <= 1'b1;
                for(i = 0; i < 8; i = i + 1) begin
                    for(j = 0; j < 8; j = j + 1) begin
                        // 1 ~ 6 
//                         new_board_reg[i][j] = {$random} % 6 + 1;
                        //if(j == 4) new_board_reg[(8 * (i) + j) * 3 +: 3] <= j;
                        new_board_reg[(8 * (i) + j) * 3 +: 3] <= (my_rand[(8 * (i) + j) * 3 +: 3] + i * 3 + j * 4) % 5 + 1;
                    end
                end
        end
        else
            if_generated_reg <= 1'b0;
    end
    
    assign if_generated = if_generated_reg;
    assign new_board = new_board_reg;
endmodule