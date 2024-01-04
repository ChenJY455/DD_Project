// confirm：确认�?�中的单元�?�进行消除操�?????
// 在�?�中�?????个单元之后，寻找与它相邻的同色单元，将它们标记为待确认删除的状�??


module eliminate(
    input  [191:0] board, // 当前棋盘
    input  [3:0] x, // 光标�?????在的单元格的x坐标
    input  [3:0] y, // 光标�?????在的单元格的y坐标
    input confirm, // 操作前是否确�?????
    input [6:0] score,
    output wire [191:0] new_board, // 新棋�?????
    output [6:0] new_score
    );
    function [1:0] unionfindset(input [1:0] rst, input integer in1, input integer in2); // rst: 0 reset; 1 find and merge; 2 find
        reg [7:0] root[63:0], count[63:0];
        integer root1, root2;
        integer i;
        if(rst == 0)begin
            for(i = 0; i < 64; i = i + 1)begin
                root[i] = i;
                count[i] = 1;
            end
            unionfindset = 0;
        end
        else if(rst == 1)begin
            for(root1 = in1; root[root1] != root1; root1 = root[root1]) begin
            end
            for(root2 = in2; root[root2] != root2; root2 = root[root2]) begin
            end
            if(root1 == root2) begin
                unionfindset = 1;
            end
            else begin
                unionfindset = 0;
                if(count[root1] > count[root2]) begin
                    count[root1] = count[root1] + count[root2];
                    root[root2] = root1;
                end else begin
                    count[root2] = count[root1] + count[root2];
                    root[root1] = root2;
                end
            end
        end
        else if(rst == 2)begin
            for(root1 = in1; root[root1] != root1; root1 = root[root1]) begin
            end
            for(root2 = in2; root[root2] != root2; root2 = root[root2]) begin
            end
            if(root1 == root2) begin
                unionfindset = 1;
            end
            else begin
                unionfindset = 0;
            end
        end
    endfunction
    reg [2:0] board0[7:0][7:0];
    reg [2:0] new_board0[7:0][7:0];
    reg [6:0] new_score0;
    integer i, j;

    assign new_score = new_score0;
    always @(*) begin
        new_score0 = score;
    end

    // reg visit[0:7][0:7]; // 判断哪几个单元格已经被访问过
    reg [2:0] color; // 选中的单元格的颜�?????
    reg [1:0] flag, flag1, flag2, flag3, flag4;
    integer in1, in2;
    reg mark;
    always @(*) begin
        for (i = 0; i < 8; i = i + 1) begin
            for (j = 0; j < 8; j = j + 1) begin
                board0[i][j] = board[(8 * i + j) * 3 +: 3];
            end 
        end 
        if(confirm == 0) begin
            color = board0[x][y];
            flag = unionfindset(0, 0, 0);
            for(i = 0; i < 8; i = i + 1) begin
                for(j = 0; j < 8; j = j + 1) begin
                    if(board0[i][j] == color) begin:find
                        integer l, r, u, p;
                        l = j - 1;
                        r = j + 1;
                        u = i - 1;
                        p = i + 1;
                        if(l >= 0 && l <= 7) begin
                            if(board0[i][l] == board0[i][j]) begin
                                flag1 <= unionfindset(1, i * 8 + l, i * 8 + j);
                            end
                        end
                        if(r >= 0 && r <= 7) begin
                            if(board0[i][r] == board0[i][j]) begin
                                flag2 <= unionfindset(1, i * 8 + r, i * 8 + j);
                            end
                        end
                        if(u >= 0 && u <= 7) begin
                            if(board0[u][j] == board0[i][j]) begin
                                flag3 <= unionfindset(1, u * 8 + j, i * 8 + j);
                            end
                        end
                        if(p >= 0 && p <= 7) begin
                            if(board0[p][j] == board0[i][j]) begin
                                flag4 <= unionfindset(1, p * 8 + j, i * 8 + j);
                            end
                        end
                    end
                end
            end
            
        end
        else begin:eliminate
            for(i = 0; i < 8; i = i + 1) begin
                for(j = 0; j < 8; j = j + 1) begin
                    if(unionfindset(2, x * 8 + y, i * 8 + j) == 1) begin
                            new_board0[i][j] = 0;
                            new_score0 = new_score0 + 6'b1;
                    end else begin
                        new_board0[i][j] = board0[i][j];
                    end
                end
            end
        end
    end
    genvar m, n;
    generate for (m = 0; m < 8; m = m + 1) begin
        for (n = 0; n < 8; n = n + 1) begin
            assign new_board[(8 * m + n) * 3 +: 3] = new_board0[m][n];
        end 
    end endgenerate
endmodule
