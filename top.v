//top module
//DD_final_project
//2023/12/25
module top(
    input clk,                             // 50MHz
    input [15:0] SW,                       // switch
    //input reset,                           //negative signal
    input PS2_clk,
    input PS2_data,
    //...
//    output [191:0] data,
    output SD_clk,
    output SD_clrn,
    output SD_sout,
    output SD_PEN,

    //VGA输出信息
    output  HS,
    output  VS,
    output [3:0] R,
    output [3:0] B,
    output [3:0] G
    );
    reg [2:0] chess_board[7:0][7:0];
    //jie mian
    reg cover0;                  //gamestart
    reg finish;                 //gameover
    wire [5:0] operation;
    integer i,j,k,q;
    //时钟分�
    wire [31:0]clkdiv;
    wire clk_in_game;
    wire clk_cover;
    reg [6:0]score;
    reg [6:0]new_score;
    wire [191:0] eliminate_board;
    wire [191:0] refresh_board;
    wire [6:0] new_score_wire;
    reg [3:0] x; // the current position of the cursor x
    reg [3:0] y; // the current position of the cursor y
    wire [3:0] new_x; // the new position of the cursor x
    wire [3:0] new_y; // the new position of the cursor y
    wire if_eliminate; // whether to eliminate
    wire chosen = !if_eliminate; // whether to choose
    wire fresh = SW[2]; // 是否产生新棋
    wire refreshed;
    wire eliminated;
    reg ready_to_eliminate;
    wire [31:0]number;
    // output
    reg [191:0] new_board;
    wire [191:0] new_board0; // the generated new chess board
    wire if_generated; // whether the new chess board is generated
    assign clk_in_game = clk & cover0;
    assign clk_cover = clk & (~cover0) & (~finish);
    //assign new_board0 = refresh_board;
//    assign data = new_board0;
    // clock divider
    clk_div clkdiv_inst(
        .clk(clk),
        .rst(1'b0),
        .div_res(clkdiv)
    );
    // keyboard input and output of operation
	PS2 ps2(
        .clk(clk), .rst(1'b0),
        .ps2_clk(PS2_clk), .ps2_data(PS2_data),
	    .operation(operation)
	);
    reg [11:0] vga_data;
    wire [9:0]  col_addr;
    wire [8:0]  row_addr;
    // VGA
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
    // input the operation and output the new position of the cursor and the elimination
    operate operate0(
        .clk(clkdiv[0]),
        .x(x), 
        .y(y), 
        .operation(operation),
        .new_x(new_x), 
        .new_y(new_y), 
        .if_eliminate(if_eliminate) // if_eliminate
    );
//    assign if_eliminate = SW[3];
    eliminate eliminate0(
        .generated(if_generated),
        .clk(clkdiv[0]),  // clkdiv
        .board(new_board),
        .x(x),
        .y(y),
        .confirm(if_eliminate),
        .score(score),
        .new_board(eliminate_board),
        .new_score(new_score_wire),
        .eliminated(eliminated),
        .num(number)
    );
    reg reset;
//    assign refreshed = SW[4];
    refresh refresh0 (
        .reset(reset),
        .clk(clkdiv[0]),
        .number(number),
        .ok_to_refresh(eliminated),
        .board(eliminate_board),
        .new_board(refresh_board),
        .refreshed(refreshed) //refreshed
    );
    generator generator_inst(
        .clk(clk),
        .fresh(fresh),
        .new_board(new_board0),
        .if_generated(if_generated)
    );
    Sseg_Dev Sseg_Dev_inst(
        .clk(clk),
        .start(clkdiv[20]),
        .hexs({0,3'b0,refreshed,3'b0,eliminated,3'b0,if_eliminate,x,y}),
        .points(8'b0),
        .LEs(8'b0),
        .sclk(SD_clk),
        .sclrn(SD_clrn),
        .sout(SD_sout),
        .EN(SD_PEN)
    );
    initial begin
        cover0 = 0;
        finish = 0;
        x = 4;
        y = 4;
        score = 0;    
//        reset = 1;
//        refreshed = 0;
    end
    //chess board
    //0 for white, 1 for red, 2 for green, 3 for blue, 4 for yellow, 5 for sky blue, 6 for pink    reg [2:0] chess_board[7:0][7:0];

    always @(*) begin
        x <= new_x;
        y <= new_y;
    end
    always @(posedge clk) begin
        
        if(if_generated == 1) begin
            new_board = new_board0;
//            if(if_generated == 1) fresh = 0;
        end
        else if(refreshed == 1) begin
            new_board = refresh_board;
        end
//        else if(eliminated == 1) begin
//            new_board = eliminate_board;
//            //reset = 1;
//        end
        
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
        if (cover0 == 0) begin
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
                //0 for white, 1 for red, 2 for green, 3 for blue, 4 for yellow, 5 for sky blue, 6 for pink 
                if (new_board[(8 * i + j) * 3 +: 3] == 0) begin
                    vga_data <= 12'b1111_1111_1111;
                end
                else if (new_board[(8 * i + j) * 3 +: 3] == 1) begin
                    vga_data <= 12'b0000_0000_1111;
                end
                else if (new_board[(8 * i + j) * 3 +: 3] == 2) begin
                    vga_data <= 12'b0000_1111_0000;
                end
                else if (new_board[(8 * i + j) * 3 +: 3] == 3) begin
                    vga_data <= 12'b1111_0000_0000;
                end
                else if (new_board[(8 * i + j) * 3 +: 3] == 4) begin
                    vga_data <= 12'b0000_1111_1111;
                end
                else if (new_board[(8 * i + j) * 3 +: 3] == 5) begin
                    vga_data <= 12'b1111_1111_0000;
                end
                else if (new_board[(8 * i + j) * 3 +: 3] == 6) begin
                    vga_data <= 12'b1111_0000_1111;
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