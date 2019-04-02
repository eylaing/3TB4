module result_mux (
	input select_result,
	input [7:0] alu_result,
	output reg [7:0] result
);

always @(*)
begin
	case (select_result)
		1'b0: begin
			result <= 8'b0000;
		end
		1'b1: begin
			result <= alu_result;
		end
	
	endcase
	
end

endmodule
