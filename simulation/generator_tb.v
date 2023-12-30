module generator_tb();
    // input
    reg fresh; // 是否产生新棋�????
    // output
    wire [191:0] new_board; // 新棋�????
    wire if_generated; // 是否产生了新棋盘

    generator generator_inst(
        .fresh(fresh),
        .new_board(new_board),
        .if_generated(if_generated)
    );

    always @(if_generated) begin
        if(if_generated == 1'b1) begin
            fresh <= 1'b0;
        end
    end

    initial begin
        fresh = 1;
        #20; fresh = 1;
    end
endmodule