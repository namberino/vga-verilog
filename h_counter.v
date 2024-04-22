module h_counter(
	input clk,
	output reg enable_v_counter = 0,
	output reg[15:0] h_count = 0
);

	always @ (posedge clk)
	begin
		if (h_count < 799)
		begin
			h_count <= h_count + 1;
			enable_v_counter <= 0;
		end else
		begin
			h_count <= 0; // reset h counter
			enable_v_counter <= 1; // trigger v counter
		end
	end

endmodule
