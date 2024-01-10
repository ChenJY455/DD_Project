// confirm：确认�?�中的单元�?�进行消除操�?????????
// 在�?�中�?????????个单元之后，寻找与它相邻的同色单元，将它们标记为待确认删除的状�??


module eliminate(
    input generated,
    input clk,
    input  [191:0] board, // 当前棋盘
    input  [3:0] x, // 光标�?????????在的单元格的x坐标
    input  [3:0] y, // 光标�?????????在的单元格的y坐标
    input confirm, // 操作前是否确�?????????
    input [6:0] score,
    output  [191:0] new_board, // 新棋�?????????
    output reg [6:0] new_score,
    output reg eliminated,
    output reg [31:0] num
    );
//    output reg not_reset
    
//    function [1:0] unionfindset(input [1:0] rst, input integer in1, input integer in2); // rst: 0 reset; 1 find and merge; 2 find
//        reg [7:0] root[63:0], count[63:0];
//        integer root1, root2;
//        integer i;
//        if(rst == 0)begin
//            for(i = 0; i < 64; i = i + 1)begin
//                root[i] = i;
//                count[i] = 1;
//            end
//            unionfindset = 0;
//        end
//        else if(rst == 1)begin
//            for(root1 = in1; root[root1] != root1; root1 = root[root1]) begin
//            end
//            for(root2 = in2; root[root2] != root2; root2 = root[root2]) begin
//            end
//            if(root1 == root2) begin
//                unionfindset = 1;
//            end
//            else begin
//                unionfindset = 0;
//                if(count[root1] > count[root2]) begin
//                    count[root1] = count[root1] + count[root2];
//                    root[root2] = root1;
//                end else begin
//                    count[root2] = count[root1] + count[root2];
//                    root[root1] = root2;
//                end
//            end
//        end
//        else if(rst == 2)begin
//            for(root1 = in1; root[root1] != root1; root1 = root[root1]) begin
//            end
//            for(root2 = in2; root[root2] != root2; root2 = root[root2]) begin
//            end
//            if(root1 == root2) begin
//                unionfindset = 1;
//            end
//            else begin
//                unionfindset = 0;
//            end
//        end
//    endfunction
//    reg [2:0] board0[7:0][7:0];
//    reg [2:0] new_board0[7:0][7:0];
//    integer i, j;

//    // reg visit[0:7][0:7]; // 判断哪几个单元格已经被访问过
//    reg [2:0] color; // 选中的单元格的颜�?????????
//    reg [1:0] flag, flag1, flag2, flag3, flag4;
//    integer in1, in2;
//    reg [16:0] mark;
//    always @(confirm or x or y) begin
//        if(confirm == 0) begin
//            new_board = board;
//            eliminated = 0;
//            color = new_board[(8 * x + y) * 3 +: 3];
//            flag = unionfindset(0, 0, 0);
//            for(i = 0; i < 8; i = i + 1) begin
//                for(j = 0; j < 8; j = j + 1) begin
//                    if(new_board[(8 * i + j) * 3 +: 3] == color) begin:find
//                        integer l, r, u, p;
//                        l = j - 1;
//                        r = j + 1;
//                        u = i - 1;
//                        p = i + 1;
//                        if(l >= 0 && l <= 7) begin
//                            if(new_board[(8 * i + l) * 3 +: 3] == color) begin
//                                flag1 <= unionfindset(1, i * 8 + l, i * 8 + j);
//                            end
//                        end
//                        if(r >= 0 && r <= 7) begin
//                            if(new_board[(8 * i + r) * 3 +: 3] == color) begin
//                                flag2 <= unionfindset(1, i * 8 + r, i * 8 + j);
//                            end
//                        end
//                        if(u >= 0 && u <= 7) begin
//                            if(new_board[(8 * u + j) * 3 +: 3] == color) begin
//                                flag3 <= unionfindset(1, u * 8 + j, i * 8 + j);
//                            end
//                        end
//                        if(p >= 0 && p <= 7) begin
//                            if(new_board[(8 * p + j) * 3 +: 3] == color) begin
//                                flag4 <= unionfindset(1, p * 8 + j, i * 8 + j);
//                            end
//                        end
//                    end
//                end
//            end
            
//        end
//        else begin:eliminate
//            new_board = board;
//            mark = 0;
//            eliminated = 1;
//            for(i = 0; i < 8; i = i + 1) begin
//                for(j = 0; j < 8; j = j + 1) begin
//                    if(unionfindset(2, x * 8 + y, i * 8 + j) == 1) begin
//                            new_board[(8 * i + j) * 3 +: 3] <= 0;
//                            mark = mark + 1;
//                            new_score = new_score + mark;
//                    end 
////                    else begin
////                        new_board[(8 * i + j) * 3 +: 3] = board0[i][j];
////                    end
//                end
//            end
//        end
//    end
////    genvar m, n;
////    generate for (m = 0; m < 8; m = m + 1) begin
////        for (n = 0; n < 8; n = n + 1) begin
////            assign new_board[(8 * m + n) * 3 +: 3] = new_board0[m][n];
////        end 
////    end endgenerate
    //reg [2:0] board0[7:0][7:0];
    //reg [2:0] new_board0[7:0][7:0];
    integer i, j, k;
    integer l, r, u, p;
    // reg visit[0:7][0:7]; // 判断哪几个单元格已经被访问过
    reg [2:0] color; // 选中的单元格的颜�?????????
    //reg [1:0] flag, flag1, flag2, flag3, flag4;
    integer in1, in2;
    reg [1:0] mark[3:0];
    reg [191:0] temp_board;
    reg [3:0] number[7:0];
    reg [32:0] cnt;
    reg [4:0] index[7:0];
    assign new_board = temp_board;
    // reg [3:0] local_x, local_y;
    initial begin 
        // cnt = 0;
        number[0] <= 0;
        number[1] <= 0;
        number[2] <= 0;
        number[3] <= 0;
        number[4] <= 0;
        number[5] <= 0;
        number[6] <= 0;
        number[7] <= 0;
    end
    always @(*) begin
        num[0 * 4 +: 4] <= number[0];
        num[1 * 4 +: 4] <= number[1];
        num[2 * 4 +: 4] <= number[2];
        num[3 * 4 +: 4] <= number[3];
        num[4 * 4 +: 4] <= number[4];
        num[5 * 4 +: 4] <= number[5];
        num[6 * 4 +: 4] <= number[6];
        num[7 * 4 +: 4] <= number[7];
    end
    always @(posedge clk) begin
        if(generated == 1) begin
            number[0] <= 0;
            number[1] <= 0;
            number[2] <= 0;
            number[3] <= 0;
            number[4] <= 0;
            number[5] <= 0;
            number[6] <= 0;
            number[7] <= 0;
        end
        if(confirm == 0) begin
            // cnt <= 0;

            eliminated <= 0;          
            // color = board[(8 * x + y) * 3 +: 3];
            // temp_board[(8 * x + y) * 3 +: 3] <= 0;
            if(y - 1 >= 0 && y - 1 <= 7) begin
                if(board[(8 * x + y - 1) * 3 +: 3] == board[(8 * x + y) * 3 +: 3]) begin
                    // temp_board[(8 * i + y - 1) * 3 +: 3] <= 0;
                    mark[0] <= 1;
                end else begin
                    mark[0] <= 0;
                end
            end
            if(y + 1 >= 0 && y + 1 <= 7) begin
                if(board[(8 * x + y + 1) * 3 +: 3] == board[(8 * x + y) * 3 +: 3]) begin
                    // temp_board[(8 * i + y + 1) * 3 +: 3] <= 0;
                    mark[1] <= 1;
                end else begin
                    mark[1] <= 0;
                end
            end
            if(x - 1 >= 0 && x - 1 <= 7) begin
                if(board[(8 * (x - 1) + y) * 3 +: 3] == board[(8 * x + y) * 3 +: 3]) begin
                    // temp_board[(8 * (x - 1) + j) * 3 +: 3] <= 0;
                    mark[2] <= 1;
                end else begin
                    mark[2] <= 0;
                end
            end
            if(x + 1 >= 0 && x + 1 <= 7) begin
                if(board[(8 * (x + 1) + y) * 3 +: 3] == board[(8 * x + y) * 3 +: 3]) begin
                    // temp_board[(8 * (x + 1) + j) * 3 +: 3] <= 0;
                    mark[3] <= 1;
                end else begin
                    mark[3] <= 0;
                end
            end
        end
        else begin
            // color = board[(8 * x + y) * 3 +: 3];
            if(board[(8 * x + y) * 3 +: 3] != 0 && (mark[0] == 1 || mark[1] == 1 || mark[2] == 1 || mark[3] == 1)) begin
                // not_reset = 0;
                j = 7;
                k = 0;
                for(i = 0; i < 8; i = i + 1) begin
                    if(number[i] < 8) begin
                        index[k] = i;
                        k = k + 1;
                    end
                    else begin
                        index[j] = 16;
                        j = j - 1;
                    end 
                end

                for(i = 0; i < 8; i = i + 1) begin
                    if(index[i] >= 8) begin
                        number[i] = 8;
                    end else begin
                        number[i] = number[index[i]];
                    end
                end
                // temp_board = board;
                temp_board = board;
                if(mark[1] == 1) begin
                    if(number[y + 1] + 1 <= 8) begin
                        for (i = 7; i >= 0; i = i - 1) begin  
                            if(i <= x && i >= 1)
                                temp_board[(8 * (i) + (y + 1)) * 3 +: 3] <= board[(8 * (i - 1) + (y + 1)) * 3 +: 3];
                        end
                        temp_board[(8 * 0 + (y + 1)) * 3 +: 3] <= 0;
                    end
                    number[y + 1] <= number[y + 1] + 1;
                    mark[1] <= 0;
                end
                if(mark[2] == 1 && mark[3] == 1) begin
                    if(number[y] + 3 <= 8) begin
                        for (j = 7; j >= 0; j = j - 1) begin  
                            if(j - 1 <= x && j >= 3)
                                temp_board[(8 * (j) + y) * 3 +: 3] <= board[(8 * (j - 3) + y) * 3 +: 3];
                        end
                        temp_board[(8 * 0 + (y)) * 3 +: 3] <= 0;
                        temp_board[(8 * 1 + (y)) * 3 +: 3] <= 0;
                        temp_board[(8 * 2 + (y)) * 3 +: 3] <= 0;
                    end 
                    number[y] <= number[y] + 3;
                    mark[2] <= 0;
                    mark[3] <= 0;
                end
                else if(mark[2] == 1 || mark[3] == 1) begin
                    if(mark[2] == 1) begin
                        if(number[y] + 2 <= 8) begin
                            for (k = 7; k >= 0; k = k - 1) begin  
                                if(k <= x && k >= 2)
                                    temp_board[(8 * (k) + y) * 3 +: 3] <= board[(8 * (k - 2) + y) * 3 +: 3];
                                    
                            end
                            temp_board[(8 * 0 + (y)) * 3 +: 3] <= 0;
                            temp_board[(8 * 1 + (y)) * 3 +: 3] <= 0;
                        end 
                    end else begin
                        if(number[y] + 2 <= 8) begin
                            for (u = 7; u >= 0; u = u - 1) begin  
                                if(u - 1 <= x && u >= 2)
                                    temp_board[(8 * (u) + y) * 3 +: 3] <= board[(8 * (u - 2) + y) * 3 +: 3];
                            end
                            temp_board[(8 * 0 + (y)) * 3 +: 3] <= 0;
                            temp_board[(8 * 1 + (y)) * 3 +: 3] <= 0;
                        end 
                    end
                    number[y] <= number[y] + 2;
                    mark[2] <= 0;
                    mark[3] <= 0;
                end 
                else if(mark[0] || mark[1])begin
                    if(number[y] + 1 <= 8) begin
                        for (l = 7; l >= 0; l = l - 1) begin  
                            if(l <= x && l >= 1)
                                temp_board[(8 * (l) + y) * 3 +: 3] <= board[(8 * (l - 1) + y) * 3 +: 3];
                        end
                        temp_board[(8 * 0 + (y)) * 3 +: 3] <= 0;
                    end 
                    mark[2] <= 0;
                    mark[3] <= 0;
                    number[y] <= number[y] + 1;
                end
                if(mark[0] == 1) begin
                    if(number[y - 1] + 1 <= 8) begin
                        for (r = 7; r >= 0; r = r - 1) begin 
                            if(r <= x && r >= 1) 
                                temp_board[(8 * (r) + (y - 1)) * 3 +: 3] <= board[(8 * (r - 1) + (y - 1)) * 3 +: 3];
                        end
                        temp_board[(8 * 0 + (y - 1)) * 3 +: 3] <= 0;
                    end 
                    mark[0] <= 0;
                    number[y - 1] <= number[y - 1] + 1;
                end
                
//                 mark[0] <= 0;
//                 mark[1] <= 0;
//                 mark[2] <= 0;
//                 mark[3] <= 0;
                // if(number[y - 1] == 8 && number[y] == 8 && number[y + 1] == 8) begin
                    
                // end else if(number[y - 1] == 8 && number[y] == 8) begin

                // end else if(number[y - 1] == 8 && number[y + 1] == 8) begin

                // end else if(number[y] == 8 && number[y + 1] == 8) begin

                // end else if(number[y - 1] == 8) begin
                //     for (k = 0; k < 8; k = k + 1) begin  
                //         temp_board[(8 * k + y - 1) * 3 +: 3 * (9 - y)] <= {temp_board[(8 * k + y) * 3 +: 3 * (9 - y - 1)], 3'b0};
                //     end
                // end else if(number[y] == 8) begin
                //     for (k = 0; k < 8; k = k + 1) begin  
                //         temp_board[(8 * k + y) * 3 +: 3 * (8 - y)] <= {temp_board[(8 * k + (y + 1)) * 3 +: 3 * (8 - y - 1)], 3'b0};
                //     end
                // end else if(number[y + 1] == 8) begin
                //     for (k = 0; k < 8; k = k + 1) begin  
                //         temp_board[(8 * k + y + 1) * 3 +: 3 * (7 - y)] <= {temp_board[(8 * k + (y + 2)) * 3 +: 3 * (7 - y - 1)], 3'b0};
                //     end
                // end

                // cnt <= cnt + 1;
                eliminated <= 1;
//                new_board <= temp_board;
            end
            // if(cnt[0] == 1 || board[(8 * x + y) * 3 +: 3] == 0) begin
            //     cnt <= 0;
            //     mark[0] <= 0;
            //     mark[1] <= 0;
            //     mark[2] <= 0;
            //     mark[3] <= 0;
            //     eliminated <= 0;
            // end
        end
    end
endmodule
