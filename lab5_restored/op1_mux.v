module op1_mux (input [1:0] select, input [7:0] pc, register, register0, position,
				output reg [7:0] result);

always @(*)
begin
	case (select)
		2'b00: begin
			result <= pc;
		end
		2'b01: begin
			result <= register;
		end
		2'b10: begin
			result <= register0;
		end
		2'b11: begin
			result <= position;
		end
	
	endcase
	
end
				
endmodule
