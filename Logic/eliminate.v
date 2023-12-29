// confirm：确认选中的单元。进行消除操作
// 在选中一个单元之后，寻找与它相邻的同色单元，将它们标记为待确认删除的状态
function [0:0] unionfindset(input clk, input rst,
    input [7:0] in1, input [7:0] in2);
    reg [7:0] root[0:63], count[0:63];
    assign out = root[in1];
    initial begin
        integer i;
        for(i = 0; i < 64; i ++)begin
            root[i] = i;
            count[i] = 1;
        end
    end
    always@(posedge clk or posedge rst)begin
        if(!rst)begin
            integer i;
            for(i = 0; i < 64; i ++)begin
                root[i] = i;
                count[i] = 1;
            end
        end
        else begin
            if(root[in1] == root[in2]) begin
                unionfindset = 1;
            end
            else begin
                unionfindset = 0;
                if(count[in1] > count[in2]) begin
                    count[root[in1]] = count[root[in1]] + count[root[in2]];
                    root[in2] = in1;
                end else begin
                    count[root[in2]] = count[root[in1]] + count[root[in2]];
                    root[in2] = in2;
                end
            end
        end
    end
    
endfunction
module eliminate(
    input clk,
    input [2:0] board[0:7][0:7], // 当前棋盘
    input [3:0] x, // 光标所在的单元格的x坐标
    input [3:0] y, // 光标所在的单元格的y坐标
    input confirm, // 操作前是否确认
    output [2:0]reg new_board[0:7][0:7], // 新棋盘
    );
    // reg visit[0:7][0:7]; // 判断哪几个单元格已经被访问过
    reg [2:0] color; // 选中的单元格的颜色
    integer i, j;
    always @(*) begin
        if(!confirm) begin
            color = board[x][y];
            for(i = 0; i < 8; i = i + 1) begin
                for(j = 0; j < 8; j = j + 1) begin
                    if(board[i][j] == color) begin
                        integer l, r, u, p;
                        l = j - 1;
                        r = j + 1;
                        u = i - 1;
                        p = i + 1;
                        bool flag;
                        if(l >= 0 && l <= 7) begin
                            if(board[i][l] == board[i][j]) begin
                                unionfindset(clk, 1,
                                i * 8 + l, i * 8 + j);
                            end
                        end
                        if(r >= 0 && r <= 7) begin
                            if(board[i][r] == board[i][j]) begin
                                unionfindset(clk, 1,
                                i * 8 + r, i * 8 + j);
                            end
                        end
                        if(u >= 0 && u <= 7) begin
                            if(board[u][j] == board[i][j]) begin
                                unionfindset(clk, 1,
                                u * 8 + j, i * 8 + j);
                            end
                        end
                        if(p >= 0 && p <= 7) begin
                            if(board[p][j] == board[i][j]) begin
                                unionfindset(clk, 1,
                                p * 8 + j, i * 8 + j);
                            end
                        end
                    end
                end
            end
            
        end
        else begin
            integer root = x * 8 + y;
            for(i = 0; i < 8; i = i + 1) begin
                for(j = 0; j < 8; j = j + 1) begin
                    if(unionfindset(clk, 1, root, i * 8 + j) == 1) begin
                            new_board[i][j] = 0;
                    end else begin
                        new_board[i][j] = board[i][j];
                end
                end
            end
        end
    end
endmodule
