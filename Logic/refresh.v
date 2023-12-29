// 检测是否有三个或三个以上的相同颜色方块相邻，如果有则消除，然后将上面的方块下移
// 结果应该没有三个相邻的方块

module refresh(
    input clk,
    input [2:0] board[0:7][0:7], // 当前棋盘
    // input [3:0] x, // 修改单元格的x坐标
    // input [3:0] y, // 修改单元格的y坐标
    output [2:0] reg new_board[0:7][0:7], // 新棋盘
    );
    reg [2:0] reg down_board[0:7][0:7];

    reg[2:0] rand;
    // rand = {$random($get_initial_random_seed())} % 7;
    integer seed;
    initial begin seed = $get_initial_random_seed(); end

    // always @(posedge clk) begin rand_num <= $random(seed); end
endmodule