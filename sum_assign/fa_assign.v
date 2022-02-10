module fa_assign(A, B, C_IN, SUM, C_OUT);
	input A, B, C_IN;
	output SUM, C_OUT;
	
		assign SUM = (A ^ B) ^ C_IN;
		assign C_OUT = (A & B)|(B & C_IN)|(A & C_IN);
endmodule
