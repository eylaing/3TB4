module pc (input clk, reset_n, branch, increment, input [7:0] newpc,
			output reg [7:0] pc);
parameter RESET_LOCATION = 8'h00;

always @(posedge clk)
begin
	if (reset_n == 1'b0)
	begin
		pc = RESET_LOCATION;
	end
	else if (increment == 1'b1)
	begin
		pc = pc + 1;
	end
	else if (branch == 1'b1)
	begin
		pc = newpc;
	end
end
			
endmodule
