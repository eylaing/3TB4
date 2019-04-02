module immediate_extractor (input [7:0] instruction, input [1:0] select, output reg [7:0] immediate);

always @(*)
begin
	case (select)
		2'b00: begin //3 bit immediate (bit 4 thru 2)
			immediate <= {{5{1'b0}},instruction[4:2]};
		end
		2'b01: begin //4 bit immediate (bit 3 thru 0)
			immediate <= {{4{1'b0}},instruction[3:0]};
		end
		2'b10: begin //5 bit immediate (bit 4 thru 0)
			immediate <= {{3{1'b0}},instruction[4:0]};
		end
		2'b11: begin //MOV instruction
			immediate <= 8'b0000;		
		end
	
	endcase
	
end

endmodule
