// selectï¼é?ä¸­ä¸?ä¸ªåå?
// confirmï¼ç¡®è®¤é?ä¸­çååã?è¿è¡æ¶é¤æä½?
// å¨é?ä¸­ä¸?ä¸ªååä¹åï¼å¯»æ¾ä¸å®ç¸é»çåè²ååï¼å°å®ä»¬æ è®°ä¸ºå¾ç¡®è®¤å é¤çç¶æ??
module operate(
    input clk,
    input [3:0] x, // åæ æ?å¨çååæ ¼çxåæ 
    input [3:0] y, // åæ æ?å¨çååæ ¼çyåæ 
    input selected, // æä½åæ¯å¦é?ä¸­
    input [2:0] operaion,
    output reg new_selected, // æä½åæ¯å¦é?ä¸­
    output reg[3:0] new_x, // æä½ååæ æå¨çååæ ¼çxåæ 
    output reg[3:0] new_y, // æä½ååæ æå¨çååæ ¼çyåæ 
    output reg if_eliminate // æ¯å¦æ¶é¤
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