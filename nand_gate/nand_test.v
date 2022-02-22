module nand_test;
	reg A,B;
	wire Y;
	
	nand_gate  nand_test(Y,A,B);
	
	initial
	begin
		#000 A=0;B=0;
		#100 A=0;B=1;
		#100 A=1;B=0;
		#100 A=1;B=1;
		#100 A=1;B=1;
	end
	initial
	begin
		$monitor($time,"a=%b,b=%b,c=%b",A,B,Y);
	end
endmodule
