// Standard: 640x480 @ 60Hz
// Input clock: 25.175MHz
module vga(
	input clk,
	output h_sync,
	output v_sync,
	output[3:0] red,
	output[3:0] green,
	output[3:0] blue
);

	wire enable_v_counter;
	wire[15:0] h_count;
	wire[15:0] v_count;

	h_counter vga_h(clk, enable_v_counter, h_count);
	v_counter vga_v(clk, enable_v_counter, v_count);

	assign h_sync = (h_count < 96) ? 1'b1 : 1'b0;
	assign v_sync = (v_count < 2) ? 1'b1 : 1'b0;

	// color: white
	assign red = (h_count > 143 && h_count < 784 && v_count > 34 && v_count < 515) ? 4'hF : 4'h0;
	assign green = (h_count > 143 && h_count < 784 && v_count > 34 && v_count < 515) ? 4'hF : 4'h0;
	assign blue = (h_count > 143 && h_count < 784 && v_count > 34 && v_count < 515) ? 4'hF : 4'h0;

endmodule
