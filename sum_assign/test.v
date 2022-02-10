module test;
	wire A, B, C_IN;
	wire SUM, C_OUT;
	reg [2:0] temp;
	
	fa_assign g0(A, B, C_IN, SUM, C_OUT);
	
	initial tmp = 3'B000;
	always #10 tmp = tmp + 1;
	
	assign A = tmp[0];
	assign B = tmp[1];
	assign C_IN = tmp[2];
endmodule
