module nand_beh(Y,A,B);
	input A,B;
	output Y;
	reg Y;
	always@(A,B)

	begin
		if (A==1 & B==1)
			Y=0;
		else
			Y=1;
	end
endmodule
