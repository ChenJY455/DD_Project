// 实现与键盘的交互
// 1. 四相移动 —— WASD/上下左右
// 2. 选中 —— Space/Enter
// 3. 取消选中 —— Esc

// TODO: 调用防抖动模块debounce
module PS_2(
    input clk,          // 时钟信号
    input reset,        // 重置信号
    input ps2_clk,      // PS/2 键盘时钟线
    input ps2_data,     // PS/2 键盘数据线
    output reg [2:0] data, // Config.md中的简化键盘码
    output reg valid    // 数据有效标志
);

    // gpt写的框架，还需要改，并且把解码的键盘码改为Config.md中的简化键盘码

    // // 状态定义
    // localparam WAIT_START = 0,
    //            READ_BITS = 1,
    //            CHECK_PARITY = 2,
    //            CHECK_STOP = 3;

    // reg [2:0] state;             // 当前状态
    // reg [3:0] bit_count;         // 位计数器
    // reg [8:0] shift_reg;         // 移位寄存器
    // reg ps2_clk_last;            // PS/2 时钟的上一个值

    // // 检测时钟的下降沿
    // wire ps2_clk_falling_edge;
    // assign ps2_clk_falling_edge = ps2_clk_last && ~ps2_clk;
    // always @(posedge clk) begin
    //     if (reset) begin
    //         ps2_clk_last <= 1'b1;
    //     end else begin
    //         ps2_clk_last <= ps2_clk;
    //     end
    // end

    // // 状态机
    // always @(posedge clk) begin
    //     if (reset) begin
    //         state <= WAIT_START;
    //         bit_count <= 0;
    //         shift_reg <= 0;
    //         valid <= 0;
    //     end else if (ps2_clk_falling_edge) begin
    //         case (state)
    //             WAIT_START: begin
    //                 if (ps2_data == 0) // 检测到起始位
    //                     state <= READ_BITS;
    //             end
    //             READ_BITS: begin
    //                 shift_reg <= {ps2_data, shift_reg[8:1]};
    //                 bit_count <= bit_count + 1;
    //                 if (bit_count == 8) begin
    //                     state <= CHECK_PARITY;
    //                 end
    //             end
    //             CHECK_PARITY: begin
    //                 // 检查奇偶校验（此处可添加奇偶校验逻辑）
    //                 state <= CHECK_STOP;
    //             end
    //             CHECK_STOP: begin
    //                 if (ps2_data == 1) begin // 检测到停止位
    //                     data <= shift_reg[7:0];
    //                     valid <= 1;
    //                 end
    //                 state <= WAIT_START;
    //             end
    //             default: state <= WAIT_START;
    //         endcase
    //     end
    // end
endmodule