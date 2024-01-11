`timescale 1ns / 1ps

module test(
    input clk,
    input PS2_clk,
    input PS2_data,
    output SD_clk,
    output SD_clrn,
    output SD_sout,
    output SD_PEN
    );
    
    wire[5:0] operation;
    wire[31:0] clk_div;
    reg[31:0] tmp;
    
    initial begin
        tmp <= 0;
    end
    always @(posedge clk_div[1]) begin
        if(operation[0] != 0)
            tmp <= tmp + 1;
         if(operation[1] != 0)
            tmp <= tmp - 1;     
    end
    
    clkdiv clkdiv_inst(
        .clk(clk),
        .rst(1'b0),
        .div_res(clk_div)
    );
    
    PS2 PS2_inst(
        .clk(clk_div),
        .rst(1'b0),
        .ps2_clk(PS2_clk),
        .ps2_data(PS2_data),
        .operation(operation)
    );
    
    Sseg_Dev SD_inst(
        .clk(clk),
        .start(clk_div[20]),
        .hexs(tmp),
        .points(8'b0),
        .LEs(8'b0),
        .sclk(SD_clk),
        .sclrn(SD_clrn), 
        .sout(SD_sout),
        .EN(SD_PEN)
    );
endmodule
