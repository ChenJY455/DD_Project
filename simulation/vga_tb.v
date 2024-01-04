`timescale 1ns/1ns

module tb_vga;

reg         clock;
reg         reset;
wire [3:0]  VGA_R;
wire [3:0]  VGA_G;
wire [3:0]  VGA_B;
wire        VGA_HS;
wire        VGA_VS;

initial begin
    clock = 1'b0;
    //reset = 1'b0;

    // Reset for 1us
    #100 
    reset = 1'b1;
    #1000
    reset = 1'b0;

end

// Generate 100MHz clock signal
always #5 clock <= ~clock;

top vga_top(
    .clk     (clock),
    //.rst     (reset),
    
    // VGA port
    .vga_r   (VGA_R),
    .vga_g   (VGA_G),
    .vga_b   (VGA_B),
    .vga_hsync  (VGA_HS),
    .vga_vsync  (VGA_VS)
);

endmodule
