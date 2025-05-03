module uart_tx
#(
	parameter CLK_FRE = 50,      					
	parameter BAUD_RATE = 115200 
)
(
	input                        clk,              		//时钟
	input                        rst_n,            		//复位
	input[7:0]                   tx_data,          		//发送数据
	input                        tx_data_valid,    		//发送数据有效
	output reg                   tx_data_ready,    		//发送准备
	output                       tx_pin            		//输出
);
//计算发送波特率
localparam                       CYCLE = CLK_FRE * 1000000 / BAUD_RATE;
//状态机
localparam                       S_IDLE       = 1;
localparam                       S_START      = 2;		//开始位
localparam                       S_SEND_BYTE  = 3;		//数据位
localparam                       S_STOP       = 4;		//停止位


reg[2:0]                         state;					//发送状态
reg[2:0]                         next_state;			//一个发送状态
reg[15:0]                        cycle_cnt; 			//计数
reg[2:0]                         bit_cnt;				//发送第几个bit
reg[7:0]                         tx_data_latch; 		//缓存要发送数据
reg                              tx_reg; 				//输出

assign tx_pin = tx_reg;

always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		state <= S_IDLE;
	else
		state <= next_state;
end

always@(*)
begin
	case(state)
		S_IDLE:
			if(tx_data_valid == 1'b1)
				next_state <= S_START;
			else
				next_state <= S_IDLE;
		S_START:
			if(cycle_cnt == CYCLE - 1)
				next_state <= S_SEND_BYTE;
			else
				next_state <= S_START;
		S_SEND_BYTE:
			if(cycle_cnt == CYCLE - 1  && bit_cnt == 3'd7)
				next_state <= S_STOP;
			else
				next_state <= S_SEND_BYTE;
		S_STOP:
			if(cycle_cnt == CYCLE - 1)
				next_state <= S_IDLE;
			else
				next_state <= S_STOP;
		default:
			next_state <= S_IDLE;
	endcase
end

always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		begin
			tx_data_ready <= 1'b0;
		end
	else if(state == S_IDLE)
		if(tx_data_valid == 1'b1)
			tx_data_ready <= 1'b0;
		else
			tx_data_ready <= 1'b1;
	else if(state == S_STOP && cycle_cnt == CYCLE - 1)
			tx_data_ready <= 1'b1;
end

always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		begin
			tx_data_latch <= 8'd0;
		end
	else if(state == S_IDLE && tx_data_valid == 1'b1)
			tx_data_latch <= tx_data;
		
end

always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		begin
			bit_cnt <= 3'd0;
		end
	else if(state == S_SEND_BYTE)
		if(cycle_cnt == CYCLE - 1)
			bit_cnt <= bit_cnt + 3'd1;
		else
			bit_cnt <= bit_cnt;
	else
		bit_cnt <= 3'd0;
end

always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		cycle_cnt <= 16'd0;
	else if((state == S_SEND_BYTE && cycle_cnt == CYCLE - 1) || next_state != state)
		cycle_cnt <= 16'd0;
	else
		cycle_cnt <= cycle_cnt + 16'd1;	
end

always@(posedge clk or negedge rst_n)
begin
	if(rst_n == 1'b0)
		tx_reg <= 1'b1;
	else
		case(state)
			S_IDLE,S_STOP:
				tx_reg <= 1'b1; 
			S_START:
				tx_reg <= 1'b0; 
			S_SEND_BYTE:
				tx_reg <= tx_data_latch[bit_cnt];
			default:
				tx_reg <= 1'b1; 
		endcase
end

endmodule 