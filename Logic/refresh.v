// �?测是否有已经消除的棋子，如果有，并将上方的棋子下移填补空缺�??
// 如果�?整列都消除了，那么将右边的棋子全部左移一�?

module refresh(
    input clk,
    input [191:0] board, // 当前棋盘
    output reg[191:0] new_board // 新棋�?
    );
    reg [2:0] down_board[0:7][0:7];

    reg[2:0] rand;
    // rand = {$random($get_initial_random_seed())} % 7;
    integer seed;
    initial begin seed = $get_initial_random_seed(); end

    // always @(posedge clk) begin rand_num <= $random(seed); end
endmodule