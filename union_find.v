module union_find #(
    parameter SIZE = 10  // 定义并查集的大小
)(
    input wire clk,
    input wire rst,
    input wire [1:0] op, // 操作类型，1为合并，2为查找
    input wire [3:0] x, y, // 操作的元素
    output reg [3:0] parent[SIZE-1:0], // 并查集的父节点数组
    output reg [3:0] root // 查找操作的结果
);

integer i;

// 初始化并查集
always @(posedge clk or posedge rst) begin
    if (rst) begin
        for (i = 0; i < SIZE; i = i + 1) begin
            parent[i] <= i; // 初始时，每个元素的父节点是它自己
        end
    end
    else if (op == 1) begin
        union_sets(x, y);
    end
    else if (op == 2) begin
        root <= find_set(x);
    end
end

// 查找集合的根
function [3:0] find_set;
    input [3:0] element;
    integer idx;
    begin
        idx = element;
        while (parent[idx] != idx) begin
            idx = parent[idx];
        end
        find_set = idx;
    end
endfunction

// 合并两个集合
task union_sets;
    input [3:0] a, b;
    [3:0] root_a, root_b;
    begin
        root_a = find_set(a);
        root_b = find_set(b);
        if (root_a != root_b) begin
            parent[root_b] = root_a;
        end
    end
endtask

endmodule
