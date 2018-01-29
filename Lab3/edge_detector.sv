module edge_detector(DVI,clk,RESET_N,DVIedge);
input DVI, clk, RESET_N;
output DVIedge;
reg delay1, delay2;
wire DVIedge;

assign DVIedge = delay1 & ~delay2;

always @ (posedge clk or negedge RESET_N)
	if(!RESET_N) begin
		delay1 <= 1'b0;
		delay2 <= 1'b0;
	end
	else begin 
		delay1 <= DVI;
		delay2 <= delay1;
	end 
endmodule 