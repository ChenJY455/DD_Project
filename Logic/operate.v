// select：选中一个单元
// confirm：确认选中的单元。进行消除操作
// 在选中一个单元之后，寻找与它相邻的同色单元，将它们标记为待确认删除的状态
module operate(
    input clk,
    input [3:0] x, // 光标所在的单元格的x坐标
    input [3:0] y, // 光标所在的单元格的y坐标
    input selected, // 操作前是否选中
    input [2:0] operaion,
    output new_selected, // 操作后是否选中
    output [3:0] new_x, // 操作后光标所在的单元格的x坐标
    output [3:0] new_y // 操作后光标所在的单元格的y坐标
    output if_eliminate // 是否消除
    );

	always @(posedge clk) begin
        case(operaion)
        3'b1:
            // select
            if (selected) begin
                if_eliminate <= 1'b1;
            end else begin
                new_selected <= 1'b1;
            end
        3'b2:
            // cancel
            if (selected) begin
                new_selected <= 1'b0;
            end
        3'b3:
            // shift left
            if (~selected) begin
                if (x > 0) begin
                    new_x <= x - 1;
                end
            end
        3'b4:
            // shift right
            if (~selected) begin
                if (x < 7) begin
                    new_x <= x + 1;
                end
            end
        3'b5:
            // shift up
            if (~selected) begin
                if (y > 0) begin
                    new_y <= y - 1;
                end
            end
        3'b6:
            // shift down
            if (~selected) begin
                if (y < 7) begin
                    new_y <= y + 1;
                end
            end
        endcase
    end

endmodule