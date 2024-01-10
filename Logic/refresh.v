// �???测是否有已经消除的棋子，如果有，并将上方的棋子下移填补空缺�??
// 如果�???整列都消除了，那么将右边的棋子全部左移一�???

module refresh(
    input reset,
    input clk,
    input [31:0] number,
    input wire ok_to_refresh,
    input wire [191:0] board, // 当前棋盘
    output wire [191:0] new_board, // 新棋�???
    output reg refreshed
    );
    reg [191:0] temp_board;
    reg [191:0] zero_board;
    integer i, j, k;
    reg [3:0] right;
    reg  flag1;
    reg refresh0;
    reg [8:0] index[7:0];
    wire [383:0]chooseboard = {zero_board, board};
    initial begin
        right = 8;
        zero_board = 0;
    end
    assign new_board = temp_board;
    // rand = {$random($get_initial_random_seed())} % 7;
    always @(posedge clk) begin
//        if(reset == 1) begin
//            refreshed = 0;
//        end else
        if(ok_to_refresh == 1) begin
            
            k = 0;
            j = 7;
            for(i = 0; i <= 7; i = i + 1) begin
                if(number[i * 4 +: 4] < 8) begin
                    index[k] = i;
                    k = k + 1;
                end
                else begin
                    index[j] = 64;
                    j = j - 1;
                end
            end
            for(i = 7; i >= 0; i = i - 1) begin
                temp_board[(8 * i + 0) * 3 +: 24] <= {chooseboard[(8 * i + index[7]) * 3 +: 3], chooseboard[(8 * i + index[6]) * 3 +: 3],
                    chooseboard[(8 * i + index[5]) * 3 +: 3],chooseboard[(8 * i + index[4]) * 3 +: 3],chooseboard[(8 * i + index[3]) * 3 +: 3],
                    chooseboard[(8 * i + index[2]) * 3 +: 3],chooseboard[(8 * i + index[1]) * 3 +: 3],chooseboard[(8 * i + index[0]) * 3 +: 3]};
            end
            refreshed <= 1;
        end
        else begin 
//            index[0] = 0;
//            index[1] = 1;
//            index[2] = 2;
//            index[3] = 3;
//            index[4] = 4;
//            index[5] = 5;
//            index[6] = 6;
//            index[7] = 7;
            refreshed <= 0;
        end
    end
    // always @(posedge clk) begin rand_num <= $random(seed); end
endmodule