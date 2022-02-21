module nand_data(Y,A,B);
	input A,B;
	output Y;
	assign Y =~(A & B);
endmodule
