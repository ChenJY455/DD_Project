// 防抖动模块
module debounce(
    input clk,
    input button, 
    output reg pbvalid
    );

    reg [7:0] pbshift;

    always@(posedge clk) begin
        pbshift = pbshift<<1;
        pbshift[0] = button;
        if (pbshift==8'b0)
            pbvalid=0;
        if (pbshift==8'hFF)
            pbvalid=1;
    end

endmodule