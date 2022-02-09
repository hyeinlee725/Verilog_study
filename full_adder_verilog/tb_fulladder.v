module tb_fulladder;
	reg A, B, C_IN;
   wire SUM, C_OUT;
     fulladder m1(.sum(SUM),.c_out(C_OUT),.a(A),.b(B),.c_in(C_IN));
   initial
      begin
          A=1'd0; B=1'd0; C_IN=1'd0;
       #5 A=1'd1; B=1'd1; C_IN=1'd1;
       #5 A=1'd0; B=1'd1; C_IN=1'd1;
       #5 A=1'd1; B=1'd0; C_IN=1'd0;
       #5 A=1'd1; B=1'd1; C_IN=1'd0;
		 #5 A=1'd1; B=1'd1; C_IN=1'd0;
   end
endmodule  
