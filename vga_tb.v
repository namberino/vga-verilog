`timescale 1ns/1ps

module vga_tb();

reg clk = 0;
wire h_sync;
wire v_sync;
wire[3:0] red;
wire[3:0] green;
wire[3:0] blue;

vga uut(clk, h_sync, v_sync, red, green, blue);

always #5 clk = ~clk;

initial begin
	$dumpfile("vga_tb.vcd");
    $dumpvars(0, vga_tb);
end

endmodule
