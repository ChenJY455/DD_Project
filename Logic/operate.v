// select：�?�中�?????个单�?????
// confirm：确认�?�中的单元�?�进行消除操�?????
// 在�?�中�?????个单元之后，寻找与它相邻的同色单元，将它们标记为待确认删除的状�??
module operate(
    input clk,
    input [3:0] x, // 光标�?????在的单元格的x坐标
    input [3:0] y, // 光标�?????在的单元格的y坐标
    input [4:0] operation,
    output reg[3:0] new_x, // 操作后光标所在的单元格的x坐标
    output reg[3:0] new_y, // 操作后光标所在的单元格的y坐标
    output reg if_eliminate // 是否消除
    );

	always @(posedge clk) begin
        if(!operation[0] && !operation[1] &&!operation[2] &&!operation[3] &&!operation[4]) begin
            new_x <= x;
            new_y <= y;
            if_eliminate <= 1'b0;
        end else begin
            
            // confirm
            if(operation[0] == 1'b1) begin
                new_x <= x;
                new_y <= y;
                if_eliminate <= 1'b1;
            end 
            // shift left
             if(operation[1] == 1'b1) begin
                new_x <= x;
                if_eliminate <= 1'b0;
                if (y > 0) begin
                    new_y <= y - 1;
                end
            end
            // shift right  
            if(operation[2] == 1'b1) begin
                new_x <= x;
                if_eliminate <= 1'b0;
                if (y < 7) begin
                    new_y <= y + 1;
                end
            end 
            // shift up
            if(operation[3] == 1'b1) begin
                new_y <= y;
                if_eliminate <= 1'b0;
                if (x > 0) begin
                    new_x <= x - 1;
                end
            end 
            // shift down
            if(operation[4] == 1'b1) begin
                new_y <= y;
                if_eliminate <= 1'b0;
                if (x < 7) begin
                    new_x <= x + 1;
                end
            end 
        end
    end

endmodule