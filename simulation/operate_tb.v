module operate_tb;

    // Inputs
    reg clk;
    reg [3:0] x;
    reg [3:0] y;
    reg selected;
    reg [2:0] operation;

    // Outputs
    wire new_selected;
    wire [3:0] new_x;
    wire [3:0] new_y;
    wire if_eliminate;

    // Instantiate the module under test
    operate uut (
        .clk(clk),
        .x(x),
        .y(y),
        .selected(selected),
        .operation(operation),
        .new_selected(new_selected),
        .new_x(new_x),
        .new_y(new_y),
        .if_eliminate(if_eliminate)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Stimulus
    initial begin
        clk = 0;
        x = 4'b0011;
        y = 4'b0011;
        selected = 0;
        operation = 3'b000;

        #10; operation = 3'b001;
        #10; operation = 3'b010;
        #10; operation = 3'b011;
        #10; operation = 3'b100;
        #10; operation = 3'b101;
        #10; operation = 3'b110;
    end

    always @(new_selected)
        selected <= new_selected;
    always @(new_x)
        x <= new_x;
    always @(new_y)
        y <= new_y;
        
endmodule