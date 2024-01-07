// 实现与键盘的交互
// 1. 四相移动 —�?? WASD/上下左右
// 2. 选中 —�?? Space/Enter
// 3. 取消选中 —�?? Esc

// 参�?�JOJO的代码，实现PS/2键盘的输�????????
module PS2(
	input clk, rst,
	input ps2_clk, ps2_data,
	output[5:0] operation
	);
    reg [4:0] operation_reg;
    reg ps2_clk_falg0, ps2_clk_falg1, ps2_clk_falg2;
    wire negedge_ps2_clk = !ps2_clk_falg1 & ps2_clk_falg2;
    reg negedge_ps2_clk_shift;
    reg [9:0] data;
    reg data_break, data_done, data_expand;
    reg [7:0] temp_data;
    reg [3:0] num;
    reg [23:0] ope_accu [0:4];
    assign operation = operation_reg;
    always@(posedge clk or posedge rst)begin
        if(rst)begin
            ps2_clk_falg0 <= 1'b0;
            ps2_clk_falg1 <= 1'b0;
            ps2_clk_falg2 <= 1'b0;
        end
        else begin
            ps2_clk_falg0 <= ps2_clk;
            ps2_clk_falg1 <= ps2_clk_falg0;
            ps2_clk_falg2 <= ps2_clk_falg1;
        end
    end

    always@(posedge clk or posedge rst)begin
        if(rst)
            num <= 4'd0;
        else if (num == 4'd11)
            num <= 4'd0;
        else if (negedge_ps2_clk)
            num <= num+1'b1;
    end

    always@(posedge clk)begin
        negedge_ps2_clk_shift <= negedge_ps2_clk;
    end


    always@(posedge clk or posedge rst)begin
        if(rst)
            temp_data <= 8'd0;
        else if (negedge_ps2_clk_shift)begin
            case(num)
                4'd2: temp_data[0] <= ps2_data;
                4'd3: temp_data[1] <= ps2_data;
                4'd4: temp_data[2] <= ps2_data;
                4'd5: temp_data[3] <= ps2_data;
                4'd6: temp_data[4] <= ps2_data;
                4'd7: temp_data[5] <= ps2_data;
                4'd8: temp_data[6] <= ps2_data;
                4'd9: temp_data[7] <= ps2_data;
                default: temp_data <= temp_data;
            endcase
        end
        else temp_data <= temp_data;
    end

    always@(posedge clk or posedge rst)begin
        if(rst)begin
            data_break <= 1'b0;
            data <= 10'd0;
            data_done <= 1'b0;
            data_expand <= 1'b0;
        end
        else if(num == 4'd11)begin
            if(temp_data == 8'hE0)begin
                data_expand <= 1'b1;
            end
            else if(temp_data == 8'hF0)begin
                data_break <= 1'b1;
            end
            else begin
                data <= {data_expand,data_break,temp_data};
                data_done <= 1'b1;
                data_expand <= 1'b0;
                data_break <= 1'b0;
            end
        end
        else begin
            data <= data;
            data_done <= 1'b0;
            data_expand <= data_expand;
            data_break <= data_break;
        end
    end

    always @(posedge clk) begin
        case (data)
            // choose or remove
            10'h05A: ope_accu[0] <= ope_accu[0] + 1;
//            10'h15A: ope_accu[0] <= 0;
            // left
            10'h26B: ope_accu[1] <= ope_accu[1] + 1;
//            10'h36B: ope_accu[1] <= 0;
            // right
            10'h274: ope_accu[2] <= ope_accu[2] + 1;
//            10'h374: ope_accu[2] <= 0;
            // up
            10'h275: ope_accu[3] <= ope_accu[3] + 1;
//            10'h375: ope_accu[3] <= 0;
            // down
            10'h272: ope_accu[4] <= ope_accu[4] + 1;
//            10'h372: ope_accu[4] <= 0;
            default: begin
                ope_accu[0] <= 24'b0;
                ope_accu[1] <= 24'b0;
                ope_accu[2] <= 24'b0;
                ope_accu[3] <= 24'b0;
                ope_accu[4] <= 24'b0;
            end
        endcase
        
        if(ope_accu[0][23] == 1) begin
            operation_reg[0] <= 1'b1;
            ope_accu[0] <= 23'b0; 
        end
        else begin
            operation_reg[0] <= 1'b0;
        end
        if(ope_accu[1][23] == 1) begin
            operation_reg[1] <= 1'b1;
            ope_accu[1] <= 23'b0; 
        end
        else begin
            operation_reg[1] <= 1'b0;
        end
        if(ope_accu[2][23] == 1) begin
            operation_reg[2] <= 1'b1;
            ope_accu[2] <= 23'b0; 
        end
        else begin
            operation_reg[2] <= 1'b0;
        end
        if(ope_accu[3][23] == 1) begin
            operation_reg[3] <= 1'b1;
            ope_accu[3] <= 23'b0; 
        end
        else begin
            operation_reg[3] <= 1'b0;
        end
        if(ope_accu[4][23] == 1) begin
            operation_reg[4] <= 1'b1;
            ope_accu[4] <= 23'b0; 
        end
        else begin
            operation_reg[4] <= 1'b0;
        end
    end

endmodule