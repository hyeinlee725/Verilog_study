module decoder(x,y,z,w,e,d);
input  w,x,y,z,e;
output [15:0]d;
assign d[0]=  (~x) & (~y) &(~z) & (~w) & (e) ;
assign d[1]=  (~x) & (~y) &(~z) & (w) & (e) ;
assign d[2]=  (~x) & (~y) &(z) & (~w) & (e) ;
assign d[3]=  (~x) & (~y) &(z)  & (w) & (e) ;
assign d[4]=  (~x) & (y) &(~z) & (~w) & (e) ;
assign d[5]=  (~x) & (y) &(~z)  & (w) & (e) ;
assign d[6]=  (~x) & (y) &(z)  & (~w) & (e) ;
assign d[7]=  (~x) & (y) &(z)  & (w) & (e) ;

assign d[8]=  (x) & (~y) &(~z) & (~w) & (e) ;
assign d[9]=  (x) & (~y) &(~z) & (w) & (e) ;
assign d[10]= (x) & (~y) &(z) & (~w) & (e) ;
assign d[11]= (x) & (~y) &(z)  & (w) & (e) ;
assign d[12]= (x) & (y) &(~z) & (~w) & (e) ;
assign d[13]= (x) & (y) &(~z)  & (w) & (e) ;
assign d[14]= (x) & (y) &(z)  & (~w) & (e) ;
assign d[15]= (x) & (y) &(z)  & (w) & (e) ;

endmodule

module decoder2();
reg x0,y0,z0,w0,e0;
wire [15:0]dd;

initial
begin
e0=0;
x0=0;
y0=1;
z0=0;
w0=1;

#10 e0=1;
#00 x0=0;
#00 y0=0;
#00 z0=0;
#00 w0=0;

#10 x0=0;
#00 y0=0;
#00 z0=1;
#00 w0=1;

#10 x0=0;
#00 y0=1;
#00 z0=0;
#00 w0=0;

#10 e0=0;
end
decoder s(.d(dd),.e(e0),.x(x0),.y(y0),.z(z0),.w(w0));
endmodule