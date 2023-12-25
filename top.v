//top module
//DD_final_project
//2023/12/25
module top(
    //时钟
    input clk,  // 50MHz

    //...



    //VGA输出信息
    output reg vga_hsync,
    output reg vga_vsync,
    output reg [3:0] vga_r,
    output reg [3:0] vga_g,
    output reg [3:0] vga_b,
    output wire [9:0] y,         //屏幕y坐标
    output wire [8:0] x;           //屏幕x坐标
    );

    //时钟分频
    reg [31:0] clkdiv = 0;
    always @(posedge clk) begin
        clkdiv <= clkdiv + 32'h1;
    end




    // 输出VGA信息，输出VGA信号
    wire [11:0] vga_data;
    //assign vga_data = ...
    //如何存储棋盘信息、取出棋盘信息待完善
    //question: vga_data怎么更新?

    vgac v0 (
        .vga_clk(clkdiv[1]),
        .clrn(1'b1),
        .d_in(vga_data),

        .row_addr(x),
        .col_addr(y),
        .r(vga_r),
        .g(vga_g),
        .b(vga_b),
        .rdn(1'b1),
        .hsync(vga_hsync),
        .vsync(vga_vsync)
    );

endmodule