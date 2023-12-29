// 检测是否有已经消除的棋子，如果有，并将上方的棋子下移填补空缺。
// 如果一整列都消除了，那么将右边的棋子全部左移一列

module refresh(
    input clk,
    input [2:0] board[0:7][0:7], // 当前棋盘
    output [2:0] reg new_board[0:7][0:7], // 新棋盘
    );
    reg [2:0] reg down_board[0:7][0:7];

    reg[2:0] rand;
    // rand = {$random($get_initial_random_seed())} % 7;
    integer seed;
    initial begin seed = $get_initial_random_seed(); end

    // always @(posedge clk) begin rand_num <= $random(seed); end
endmodule