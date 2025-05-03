module UART(
			input                   clk,
			input                   rst_n,
			
		    input                   Freq_over,
		    input                   AM_FM_over,
		    input     [  31:0]      max_freq_addr,
		    input     [  13:0]      AMP_MAX,
		    input     [   7:0]      carrier_freq,
		    input     [   2:0]      AM_FM,
		               
			output                  uart_tx
    );
 
parameter                        CLK_FRE = 125;	//Mhz
localparam                       IDLE =  0;
localparam                       SEND =  1;   	//发送状态
localparam                       WAIT =  2;   	//等待状态1s发送一次

reg             [ 3:0]           state;
reg             [ 7:0]			 data   		[ 8:0];
reg             [ 7:0]           tx_cnt;
reg             [ 7:0]           tx_str;
reg             [ 7:0]           tx_data;
reg                              tx_data_valid;
wire                             tx_data_ready;

always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		begin
			tx_data  		<= 8'd0;
			state    		<= IDLE;
			tx_cnt   		<= 8'd0;
			tx_data_valid 	<= 1'b0;
		end
	else
		case(state)
			IDLE:
				state <= SEND;
			SEND:
			begin
				tx_data  <= tx_str;
				if(tx_data_valid == 1'b1 && tx_data_ready == 1'b1 && tx_cnt < 8'd12)//发送数据
					begin
						tx_cnt <= tx_cnt + 8'd1; 									 //发送计数
					end
				else if(tx_data_valid && tx_data_ready)								 //发送完成
					begin
						tx_cnt 		  <= 8'd0;
						tx_data_valid <= 1'b0;
						state 		  <= WAIT;
					end
				else if(~tx_data_valid)
					begin
						tx_data_valid <= 1'b1;
					end
			end
			WAIT:
			begin
				if(tx_data_valid && tx_data_ready)
					begin
						tx_data_valid <= 1'b0;
					end
				else if(Freq_over)
					begin
						state 	<= SEND;
					end
			end
			default:
				state <= IDLE;
		endcase
end

always@(*)
begin
	data[0]	<= AM_FM               ;
	data[1] <= carrier_freq        ;
	
	data[2] <= max_freq_addr[31:24];
	data[3] <= max_freq_addr[23:16];
	data[4] <= max_freq_addr[15: 8];
	data[5] <= max_freq_addr[ 7: 0];

	data[6] <= AMP_MAX      [13: 6];
	data[7] <= { 3'd0,AMP_MAX[5:0]};
	
	data[8] <= { AMP_MAX[13], 7'd0};	
	
	case(tx_cnt)
		8'd0 :  tx_str <= data[0] ;
		8'd1 :  tx_str <= data[1] ;
		
		8'd2 :  tx_str <= data[2] ;
		8'd3 :  tx_str <= data[3] ;
		8'd4 :  tx_str <= data[4] ;
		8'd5 :  tx_str <= data[5] ;
		
		8'd6 :  tx_str <= data[6] ;
		8'd7 :  tx_str <= data[7] ;
		8'd8 :  tx_str <= data[8] ;
		
		8'd9 :  tx_str <= "O"     ;
		8'd10:  tx_str <= "K"     ;
		8'd11:  tx_str <= 8'h0D   ;
		8'd12:  tx_str <= "\n"    ;
		default:tx_str <= 8'd0    ;
	endcase
end

uart_tx#
(
	.CLK_FRE					(CLK_FRE				  ),
	.BAUD_RATE					(115200					  )
) uart_tx_inst
(
	.clk                        (clk                      ),
	.rst_n                      (rst_n                    ),
	.tx_data                    (tx_data                  ),
	.tx_data_valid              (tx_data_valid            ),
	.tx_data_ready              (tx_data_ready            ),
	.tx_pin                     (uart_tx                  )
);
endmodule
