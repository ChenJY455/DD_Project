//top module
//DD_final_project
//2023/12/25
module top(
    //时钟
    input clk,  // 50MHz

    //...



    //VGA输出信息
    output  vga_hsync,
    output  vga_vsync,
    output [3:0] vga_r,
    output [3:0] vga_g,
    output [3:0] vga_b
    //output wire [9:0] col_addr,         //屏幕y坐标
    //output wire [8:0] row_addr           //屏幕x坐标
    );

    //棋盘信息 5种颜�???
    //0 is red, 1 is green, 2 is blue, 3 is yellow, 4 is purple�?? 5 is black
    reg [2:0] chess_board [7:0][7:0];   // 2D array of 8x8 each element is 3 bits
    reg [11:0] colour_red = 12'hF00;
    reg [11:0] colour_green = 12'h0F0;
    reg [11:0] colour_blue = 12'h00F;
    reg [11:0] colour_yellow = 12'hFF0;
    reg [11:0] colour_purple = 12'hF0F;
    reg [9:0] chess_width = 640 / 8;
    reg [8:0] chess_height = 480 / 8;
    
    //棋盘信息初始�??? 第一排红色，第二排绿色，第三排蓝色，第四排黄色，第五排紫色，其余为黑�???
    integer i, j;
    initial begin
        for (i = 0; i < 8; i=i+1) begin
            for (j = 0; j < 8; j=j+1) begin
                if (i == 0) begin
                    chess_board[i][j] = 3'b000;
                end else if (i == 1) begin
                    chess_board[i][j] = 3'b001;
                end else if (i == 2) begin
                    chess_board[i][j] = 3'b010;
                end else if (i == 3) begin
                    chess_board[i][j] = 3'b011;
                end else if (i == 4) begin
                    chess_board[i][j] = 3'b100;
                end else begin
                    chess_board[i][j] = 3'b101;
                end
            end
        end
    end 
    



    //VGA
    //时钟分频
    wire [31:0] div_res;
    vga_clkdiv vga_clkdiv_inst(
        .clk(clk),
        .rst(1'b1),
        .div_res(div_res)
    );

    // 输出VGA信息，输出VGA信号
    wire [11:0] vga_data;
    reg [11:0] vga_data_reg;
    integer x; integer y;                        //将屏幕x坐标，屏幕y坐标转化为棋盘坐�??
    always @ (*) begin
        //size 480*640 -> 8*8
        x = col_addr - 80 >= 0 ? (col_addr - 80) / chess_height : 0;
        y = row_addr / chess_width;
        vga_data_reg = chess_board[x][y];
    end

    assign vga_data = vga_data_reg;
    vgac v0 (
        .vga_clk(div_res[1]),
        .clrn(1'b1),
        .d_in(vga_data),
        .row_addr(row_addr),
        .col_addr(col_addr),
        .r(vga_r),
        .g(vga_g),
        .b(vga_b),
        //.rdn(1'b1),
        .hsync(vga_hsync),
        .vsync(vga_vsync)        
    );


endmodule