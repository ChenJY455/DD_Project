// 用级联的写法
 module ShiftReg
 #(parameter BIT_WIDTH = 8)(
     input                 clk,
     input                 shiftn_loadp,
     input                 shift_in,
     input [BIT_WIDTH-1:0] par_in,
     output[BIT_WIDTH-1:0] Q
 );

     reg [BIT_WIDTH-1:0] Q_reg = 0;
     assign Q = Q_reg;
    
     always @(posedge clk) begin
         if(shiftn_loadp == 1'b0)
             Q_reg <= {shift_in, Q_reg[BIT_WIDTH-1:1]};
         else
             Q_reg <= par_in;
     end
 endmodule

//// 用generator的写法
//module ShiftReg1b(
//    input   clk,
//    input   shiftn_loadp,
//    input   shift_in,
//    input   par_in,
//    output  shift_out
//);

//reg shift_out_reg;
//assign shift_out = shift_out_reg;

//always @(posedge clk) begin
//    if(shiftn_loadp == 1'b0)
//        shift_out_reg <= shift_in;
//    else
//        shift_out_reg <= par_in;
//end
//endmodule

//module ShiftReg
//#(parameter BIT_WIDTH = 8)(
//    input                 clk,
//    input                 shiftn_loadp,
//    input                 shift_in,
//    input [BIT_WIDTH-1:0] par_in,
//    output[BIT_WIDTH-1:0] Q
//);
    
//    generate
//        genvar i;
//        for (i = 0; i < BIT_WIDTH; i = i + 1) begin
//            if(i == BIT_WIDTH-1) begin
//                ShiftReg1b shift_reg(
//                    .clk(clk),
//                    .shift_in(shift_in),
//                    .par_in(par_in[i]),
//                    .shiftn_loadp(shiftn_loadp),
//                    .shift_out(Q[i])
//                    );
//            end else begin
//                ShiftReg1b shift_reg(
//                    .clk(clk),
//                    .shift_in(Q[i+1]),
//                    .par_in(par_in[i]),
//                    .shiftn_loadp(shiftn_loadp),
//                    .shift_out(Q[i])
//                );
//            end
//        end
//    endgenerate
//endmodule