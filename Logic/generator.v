// 初始的时候随机生成一个大小为8*8的棋盘，并用各种颜色单元填充

module generator(
    input clk,
    input fresh, // 是否产生新棋�?
    output reg[191:0] new_board, // 新棋�?
    output reg if_generated // 是否产生了新棋盘
    );

    reg seed;

    initial begin
        seed = $get_initial_random_seed(); 
    end

    always @(posedge clk) begin:generate_block
        integer i, j;
        if (fresh) begin
            for(i = 0; i < 8; i = i + 1) begin
                for(j = 0; j < 8; j = j + 1) begin
                    // 1 ~ 6 
                    new_board[(i * 8 + j) * 3 +: 3] <= {{$random(seed)} % 6 + 1};
                end
            end
            if_generated <= 1'b1;
        end
    end

endmodule