module fsm_filtSTM(findFinished, DVIedge, clk, reset_n, storeEnvelope, startFinder, DVO);
input findFinished, DVIedge, clk, reset_n;
output storeEnvelope, startFinder, DVO;

reg [2:0] state;
reg storeEnvelope, startFinder, DVO;

parameter IDLE = 3'b000;
parameter S1 = 3'b001;
parameter S2 = 3'b010;
parameter S3 = 3'b011;
parameter S4 = 3'b100;
parameter S5 = 3'b101;

always @ (posedge clk or negedge reset_n)
	if (!reset_n) begin
		state <= IDLE;
		DVO <= 1'b1;
	end
	else begin
		case(state)

			IDLE: begin
				if (!DVIedge) begin
					DVO <= 1'b1;
					state <= IDLE;
				end
				else begin
					DVO <= 1'b0;
					state <= S1;
				end
			end

			S1: begin 
					storeEnvelope <= 1'b1;
					state <= S2;
			end

			S2: begin
				storeEnvelope <= 1'b0;
				startFinder <= 1'b1;
				state <= S3;
			end

			S3: begin
				startFinder <= 1'b1;
				state <= S4;
			end

			S4: begin
				startFinder <= 1'b0;
				if(findFinished) begin
					state <= S5;
				end
				else begin
					state <= S4;
				end
			end

			S5: begin
				DVO <= 1'b1;
				state <= IDLE;
			end
		endcase
	end
endmodule 