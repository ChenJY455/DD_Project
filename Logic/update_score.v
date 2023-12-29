// 刷新分数
// 分数计算公式（与一次性消除的元素数量有关）

module update_score(
    input clk,
    input [3:0] score, // 当前分数
    input [3:0] change, // 分数变化  
    output [3:0] reg new_score // 新分数
    );

endmodule