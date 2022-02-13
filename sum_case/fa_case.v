module fa_case(A, B, C_IN, SUM, C_OUT);
	input A, B, C_IN;
	output SUM, C_OUT;
	reg SUM, C_OUT;
	always@(*) begin
	
	case ({C_IN, A, B})
		3'B000 : {C_OUT, SUM} = 2'B00;
		3'B001 : {C_OUT, SUM} = 2'B01;
		3'B010 : {C_OUT, SUM} = 2'B01;
		3'B011 : {C_OUT, SUM} = 2'B10;
		3'B100 : {C_OUT, SUM} = 2'B01;
		3'B101 : {C_OUT, SUM} = 2'B10;
		3'B110 : {C_OUT, SUM} = 2'B10;
		3'B111 : {C_OUT, SUM} = 2'B11;
	endcase
	end
endmodule
