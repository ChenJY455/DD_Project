//top module
//DD_final_project
//2023/12/25
`timescale 1ns/1ns
// module top(
//     input clk,                             // 50MHz
//     input [15:0] SW,                       // switch
//     //input reset,                           //negative signal
//     input PS2_clk,
//     input PS2_data,
//     //...



//     //VGA输出信息
//     output  HS,
//     output  VS,
//     output [3:0] R,
//     output [3:0] B,
//     output [3:0] G
//     );
module top_tb();
reg clk;
wire [191:0] data;
reg [15:0] SW;
top uut(
    .clk(clk),
    .SW(SW),
    .PS2_clk(),
    .PS2_data(),
    .data(data),
    .HS(),
    .VS(),
    .R(),
    .B(),
    .G()
);
initial begin
    clk = 0;
    forever #5 clk=~clk;
end
initial begin
    SW = 16'b0000000000000011;
end
endmodule