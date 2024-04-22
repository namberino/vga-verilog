module v_counter(
	input clk,
	input enable_v_counter,
	output reg[15:0] v_count = 0
);

	always @ (posedge clk)
	begin
		// count till 525
		if (enable_v_counter == 1'b1)
		begin
			if (v_count < 524)
			begin
				v_count <= v_count + 1;
			end else
			begin
				v_count <= 0;
			end
		end
	end

endmodule
