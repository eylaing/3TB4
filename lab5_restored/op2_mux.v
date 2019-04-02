module op2_mux (input [1:0] select, input [7:0] register, immediate,
				output reg [7:0] result);
				
always @(*)
begin
	case (select)
		2'b00: begin
			result <= register;
		end
		2'b01: begin
			result <= immediate;
		end
		2'b10: begin
			result <= 8'b0001;
		end
		2'b11: begin
			result <= 8'b0010;
		end
	
	endcase
	
end

endmodule
