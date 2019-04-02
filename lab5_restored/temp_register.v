module temp_register (input clk, reset_n, load, increment, decrement, input [7:0] data,
					output negative, positive, zero);

reg signed [7:0] counter, counter_next;
reg neg, pos, zer;

always @(posedge increment or posedge decrement)
begin
	if (increment==1'b1) begin
		counter_next=counter+1;
	end else if (decrement==1'b1) begin
		counter_next=counter-1;
	end
end


always @(posedge clk or negedge reset_n)
begin
	if (reset_n==0) begin
		counter <= 8'b00;
	end
	else if (load==1'b1) begin
		counter <= data;
	end else begin
		counter <= counter_next;
	end

end


assign negative = counter[7];
assign positive = (counter[7]==0 && counter!=8'b00);
assign zero = (counter==8'b00);


endmodule
