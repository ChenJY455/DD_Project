// select：�?�中�?个单�?
// confirm：确认�?�中的单元�?�进行消除操�?
// 在�?�中�?个单元之后，寻找与它相邻的同色单元，将它们标记为待确认删除的状�??
module operate(
    input clk,
    input [3:0] x, // 光标�?在的单元格的x坐标
    input [3:0] y, // 光标�?在的单元格的y坐标
    input selected, // 操作前是否�?�中
    input [2:0] operaion,
    output reg new_selected, // 操作后是否�?�中
    output reg[3:0] new_x, // 操作后光标所在的单元格的x坐标
    output reg[3:0] new_y, // 操作后光标所在的单元格的y坐标
    output reg if_eliminate // 是否消除
    );

	always @(posedge clk) begin
        case(operaion)
        3'd1:
            // select
            if (selected) begin
                if_eliminate <= 1'b1;
            end else begin
                new_selected <= 1'b1;
            end
        3'd2:
            // cancel
            if (selected) begin
                new_selected <= 1'b0;
            end
        3'd3:
            // shift left
            if (~selected) begin
                if (x > 0) begin
                    new_x <= x - 1;
                end
            end
        3'd4:
            // shift right
            if (~selected) begin
                if (x < 7) begin
                    new_x <= x + 1;
                end
            end
        3'd5:
            // shift up
            if (~selected) begin
                if (y > 0) begin
                    new_y <= y - 1;
                end
            end
        3'd6:
            // shift down
            if (~selected) begin
                if (y < 7) begin
                    new_y <= y + 1;
                end
            end
        endcase
    end

endmodule