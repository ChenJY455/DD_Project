// 采用VGA协议，在屏幕上显示棋�?
// DD_final_project
// 2023/12/25
// Wan Zhenjie
//reference:https://guahao31.github.io/2023_DD/final_project/attachment/vgac.v
module vgac(
    input vga_clk, // 接入25.175MHz时钟，可�?25MHz代替
    input clrn, // 重置信号, 低电平有效，将扫描信号归位到(0,0)
    input [11:0] d_in, //12�? RGB 信号，格式为 bbbb_gggg_rrrr
    output reg [8:0] row_addr, 
    output reg [9:0] col_addr,
    output reg [3:0] r,g,b,
    output reg rdn, //判断当前扫描到的地址是否为有效数据，低电平为有效
    output reg hsync, //水平同步信号
    output reg vsync //垂直同步信号
    );
    //水平计数�?
    reg [9:0] h_count; // VGA horizontal counter (0-799): pixels
    always @ (posedge vga_clk) begin
        if (!clrn) begin
            h_count <= 10'h0;
        end else if (h_count == 10'd799) begin
            h_count <= 10'h0;
        end else begin 
            h_count <= h_count + 10'h1;
        end
    end
    //垂直计数�?
    reg [9:0] v_count; // VGA vertical   counter (0-524): lines
    always @ (posedge vga_clk or negedge clrn) begin
        if (!clrn) begin
            v_count <= 10'h0;
        end else if (h_count == 10'd799) begin
            if (v_count == 10'd524) begin
                v_count <= 10'h0;
            end else begin
                v_count <= v_count + 10'h1;
            end
        end
    end
    //同步信号
    wire  [9:0] row    =  v_count - 10'd35;     // pixel ram row addr
    wire  [9:0] col    =  h_count - 10'd143;    // pixel ram col addr
    wire        h_sync = (h_count > 10'd95);    //  96 -> 799
    wire        v_sync = (v_count > 10'd1);     //   2 -> 524
    wire        read   = (h_count > 10'd142) && // 143 -> 782
                         (h_count < 10'd783) && //        640 pixels
                         (v_count > 10'd34)  && //  35 -> 514
                         (v_count < 10'd515);   //        480 lines
    //vga信号
    always @ (posedge vga_clk) begin
        row_addr <=  row[8:0]; // pixel ram row address
        col_addr <=  col;      // pixel ram col address
        rdn      <= ~read;     // read pixel (active low)
        hsync       <=  h_sync;   // horizontal synchronization
        vsync       <=  v_sync;   // vertical   synchronization
        r        <=  rdn ? 4'h0 : d_in[3:0]; // 3-bit red
        g        <=  rdn ? 4'h0 : d_in[7:4]; // 3-bit green
        b        <=  rdn ? 4'h0 : d_in[11:8]; // 3-bit blue
    end
endmodule