//top module
//DD_final_project
//2023/12/25
module top(
    input clk,                             // 50MHz
    input [15:0] SW,                       // switch
    //input reset,                           //negative signal

    //...



    //VGA输出信息
    output  HS,
    output  VS,
    output [3:0] R,
    output [3:0] B,
    output [3:0] G
    );
    //jie mian
    reg cover0;                  //gamestart
    reg finish;                 //gameover
    initial begin
        cover0=0;
        finish=0;
    end
    //时钟分�
    wire [31:0]clkdiv;
    wire clk_in_game;
    wire clk_cover;
    assign clk_in_game = clk & cover0;
    assign clk_cover = clk & (~cover0) & (~finish);
    
    clkdiv clkdiv_inst(
        .clk(clk),
        .rst(1'b0),
        .clkdiv(clkdiv)
    );
	
    reg [11:0] vga_data;
    wire [9:0]  col_addr;
    wire [8:0]  row_addr;

    vgac v0(
        .vga_clk(clkdiv[1]),
        .clrn(SW[0]),
        .d_in(vga_data),
        .row_addr(row_addr),
        .col_addr(col_addr),
        .r(R),
        .g(G),
        .b(B),
        .hs(HS),
        .vs(VS)
    );
    
    //chess board
    //0 for red, 1 for green, 2 for blue, 3 for yellow, 4 for purple, 5 for white
    reg [2:0] chess_board[7:0][7:0];
    integer i,j,k;
    initial begin
        k=0;
        for (i=0;i<8;i=i+1) begin
            for (j=0;j<8;j=j+1) begin
                chess_board[i][j]=k;
                k = (k+1)%6;
            end
        end
    end

    reg [18:0] pic1_addr;
    wire [11:0] pic1;                            //cover's data
    ////////////////// IP CORE  /////////////
    cover cover_inst(
        .clka   (clkdiv[1]),     
        .addra  (pic1_addr),      
        .douta  (pic1)       
    );
    ////////////////// IP CORE's INPUT ////////////////
    always @(posedge clk_cover) begin
        pic1_addr <= (col_addr>=0 && col_addr<=639 && row_addr>=0 && row_addr <= 479) ? row_addr * 640 + col_addr:0; 
    end
    
    ///////////////////DISPLAY PART/////////////////////
    
    always @(posedge clk) begin
        if (cover == 0) begin
            if (col_addr>=0 && col_addr<=639 && row_addr>=0 && row_addr <= 479)
                vga_data <= pic1; 
            //if(col_addr>=253&&col_addr<=398&&row_addr>=251&&row_addr<=255)      //spark
              //  vga_data<=12'b0001_0001_0011; 
        end
        else begin                              //in game
            if (col_addr < 120 || col_addr > 519 || row_addr < 40 || row_addr > 439)
            vga_data <= 12'b1111_1111_1111;
            else begin
                i <= (row_addr - 40)/50;
                j <= (col_addr - 120)/50;
                if (chess_board[i][j] == 0) begin
                    vga_data <= 12'b1111_0000_0000;
                end
                else if (chess_board[i][j] == 1) begin
                    vga_data <= 12'b0000_1111_0000;
                end
                else if (chess_board[i][j] == 2) begin
                    vga_data <= 12'b0000_0000_1111;
                end
                else if (chess_board[i][j] == 3) begin
                    vga_data <= 12'b1111_1111_0000;
                end
                else if (chess_board[i][j] == 4) begin
                    vga_data <= 12'b1111_0000_1111;
                end
                else if (chess_board[i][j] == 5) begin
                    vga_data <= 12'b1111_1111_1111;
            end
            end
        end  
    end
    
    ////////////////control signal/////////////////////
    always @(posedge clk) begin
        if (SW[1] == 0) begin
            cover0 <= 0;
        end
        else begin
            cover0 <= 1;
        end
    end

endmodule