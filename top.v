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
    reg cover;                  //gamestart
    reg finish;                 //gameover
    reg x;
    reg y;
    initial begin
        cover=0;
        finish=0;
        x = 0;
        y = 1;
    end
    //时钟分�
    wire [31:0]clkdiv;
    wire clk_in_game;
    wire clk_cover;
    assign clk_in_game = clk & cover;
    assign clk_cover = clk & (~cover) & (~finish);
    
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
    reg [18:0] pic2_addr;
    wire [11:0] pic2;                           //background's data
    reg [11:0] st_r_addr;
    wire [11:0] st_r_data;                      //Red Star's data
    reg [11:0] st_g_addr;
    wire [11:0] st_g_data;                      //Green Star's data
    reg [11:0] st_b_addr;
    wire [11:0] st_b_data;                      //Blue Star's data
    reg [11:0] st_y_addr;
    wire [11:0] st_y_data;                      //Yellow Star's data
    reg [11:0] st_p_addr;
    wire [11:0] st_p_data;                      //Purple Star's data

    ////////////////// IP CORE  /////////////
    cover cover_inst(
        .clka   (clkdiv[1]),     
        .addra  (pic1_addr),      
        .douta  (pic1)       
    );
    background background_inst(
        .clka (clkdiv[1]),
        .addra (pic2_addr),
        .douta (pic2)
    );
    st_r st_r_inst(
        .clka (clkdiv[1]),
        .addra (st_r_addr),
        .douta (st_r_data)
    );
    st_g st_g_inst(
        .clka (clkdiv[1]),
        .addra (st_g_addr),
        .douta (st_g_data)
    );
    st_b st_b_inst(
        .clka (clkdiv[1]),
        .addra (st_b_addr),
        .douta (st_b_data)
    );
    st_y st_y_inst(
        .clka (clkdiv[1]),
        .addra (st_y_addr),
        .douta (st_y_data)
    );
    st_p st_p_inst(
        .clka (clkdiv[1]),
        .addra (st_p_addr),
        .douta (st_p_data)
    );
    
    ////////////////// IP CORE's INPUT ////////////////
    always @(posedge clk_cover) begin
        pic1_addr <= (col_addr>=0 && col_addr<=639 && row_addr>=0 && row_addr <= 479) ? row_addr * 640 + col_addr:0; 
    end
    
    always @(posedge clk) begin
        pic2_addr <= (col_addr>=0 && col_addr<=639 && row_addr>=0 && row_addr <= 479) ? row_addr * 640 + col_addr:0;
    end
    
    always @(posedge clk) begin
        st_r_addr <= (col_addr>=120 && col_addr<=520 && row_addr>=40 && row_addr <= 439) ? ((row_addr-40) % 50) * 50 + (col_addr-120) % 50 : 0; 
    end

    always @(posedge clk) begin
        st_g_addr <= (col_addr>=120 && col_addr<=520 && row_addr>=40 && row_addr <= 439) ? ((row_addr-40) % 50) * 50 + (col_addr-120) % 50 : 0; 
    end

    always @(posedge clk) begin
        st_b_addr <= (col_addr>=120 && col_addr<=520 && row_addr>=40 && row_addr <= 439) ? ((row_addr-40) % 50) * 50 + (col_addr-120) % 50 : 0; 
    end

    always @(posedge clk) begin
        st_y_addr <= (col_addr>=120 && col_addr<=520 && row_addr>=40 && row_addr <= 439) ? ((row_addr-40) % 50) * 50 + (col_addr-120) % 50 : 0; 
    end

    always @(posedge clk) begin
        st_p_addr <= (col_addr>=120 && col_addr<=520 && row_addr>=40 && row_addr <= 439) ? ((row_addr-40) % 50) * 50 + (col_addr-120) % 50 : 0; 
    end

    ///////////////////DISPLAY PART/////////////////////
    
    always @(posedge clk) begin
        if (cover == 0) begin
            if (col_addr>=0 && col_addr<=639 && row_addr>=0 && row_addr <= 479)
                vga_data <= pic1[11:0]; 
            //if(col_addr>=253&&col_addr<=398&&row_addr>=251&&row_addr<=255)      //spark
              //  vga_data<=12'b0001_0001_0011; 
        end
        else begin                              //in game
            if (col_addr < 120 || col_addr > 519 || row_addr < 40 || row_addr > 439)
            vga_data <= pic2[11:0];
            else begin
                i <= (row_addr - 40)/50;
                j <= (col_addr - 120)/50;
                if (chess_board[i][j] == 0) begin
                    vga_data <= pic2[11:0];
                end
                if (chess_board[i][j] == 1) begin
                    if(st_r_data[11:0]!=12'hfff)begin 
                        vga_data<=st_r_data[11:0]; 
                    end
                    else begin 
                        if (x == i && y == j) begin
                            vga_data <= 12'b1111_1111_1111;
                        end
                        else begin
                            vga_data <= pic2[11:0];
                        end
                    end
                end
                if (chess_board[i][j] == 2) begin
                    if(st_g_data[11:0]!=12'hfff)begin 
                        vga_data<=st_g_data[11:0]; 
                    end
                    else begin 
                        if (x == i && y == j) begin
                            vga_data <= 12'b1111_1111_1111;
                        end
                        else begin
                            vga_data <= pic2[11:0];
                        end
                    end
                end
                if (chess_board[i][j] == 3) begin
                    if(st_b_data[11:0]!=12'hfff)begin 
                        vga_data<=st_b_data[11:0]; 
                    end
                    else begin 
                        if (x == i && y == j) begin
                            vga_data <= 12'b1111_1111_1111;
                        end
                        else begin
                            vga_data <= pic2[11:0];
                        end
                    end
                end
                if (chess_board[i][j] == 4) begin
                    if(st_y_data[11:0]!=12'hfff)begin 
                        vga_data<=st_y_data[11:0]; 
                    end
                    else begin 
                        if (x == i && y == j) begin
                            vga_data <= 12'b1111_1111_1111;
                        end
                        else begin
                            vga_data <= pic2[11:0];
                        end
                    end
                end
                if (chess_board[i][j] == 5) begin
                    if(st_p_data[11:0]!=12'hfff)begin 
                        vga_data<=st_p_data[11:0]; 
                    end
                    else begin 
                        if (x == i && y == j) begin
                            vga_data <= 12'b1111_1111_1111;
                        end
                        else begin
                            vga_data <= pic2[11:0];
                        end
                    end
                end
            end
        end  
    end
    
    ////////////////control signal/////////////////////
    always @(posedge clk) begin
        if (SW[1] == 0) begin
            cover <= 0;
        end
        else begin
            cover <= 1;
        end
    end
    
    always @(posedge clk) begin
        if (SW[2] == 1) begin
            x = (x+1) % 8;
        end
        if (SW[3] == 1) begin
            y = (y+1) % 8;
        end
    end

endmodule