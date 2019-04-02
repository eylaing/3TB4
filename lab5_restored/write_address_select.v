module write_address_select (input [1:0] select, input [1:0] reg_field0, reg_field1, output reg [1:0] write_address);

always @(*)
begin
	case (select)
		2'b00: begin
			write_address <= 2'b00;
		end
		2'b01: begin
			write_address <= reg_field0;
		end
		2'b10: begin
			write_address <= reg_field1;
		end
		2'b11: begin
			write_address <= 2'b10;
		end
	
	endcase
	
end

endmodule
