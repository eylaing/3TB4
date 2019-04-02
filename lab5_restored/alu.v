module alu (input add_sub, set_low, set_high, input [7:0] operanda , operandb, output reg [7:0] result);

always @(*)
begin
	if(set_low == 1'b1)
	begin
		result = {operanda[7:4], operandb[3:0]};
	end
	else if(set_high == 1'b1)
	begin
		result = {operandb[3:0], operanda[3:0]};
	end
	else if(add_sub == 1'b0)
	begin
		result = operanda + operandb;
	end
	else if(add_sub == 1'b1)
	begin
		result = operanda - operandb;
	end
end

endmodule