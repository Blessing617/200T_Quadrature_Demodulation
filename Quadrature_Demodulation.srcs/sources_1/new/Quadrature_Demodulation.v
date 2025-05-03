module Quadrature_Demodulation(
    //时钟复位
    input                           clk_50M             ,
    input                           rst_n               ,
     // AD9481
    input                           ADC_DCO_P           ,//B信号时钟
    input                           ADC_DCO_N           ,//A信号时钟
    input           [ 7:0]          ADC_DIN_A           ,//A信号
    input           [ 7:0]          ADC_DIN_B           ,//B信号
	
    output                          ADC_CLK             ,//ADC时钟
    output                          ADC_PDWN            ,
    // DAC
    output                          DAC_CLK             ,//DAC输出时钟   
    output          [13:0]          dac_data            ,//DAC输出数据
    //串口
    output                          uart_tx              //串口输出
                      
    );
    
wire                                clk_125M            ;//倍频时钟
wire                                clk_locked          ;//锁相环输出锁定信号 
    
wire                                Freq_over           ;//频率检测结束信号
wire                                AM_FM_over          ;//调制类型判断结束信号    

wire                [ 2:0]          AM_FM               ;//调制类型
wire                [ 7:0]          carrier_freq        ;//载波频率
wire                [31:0]          max_freq_addr       ;//频率地址
wire                [13:0]          AMP_MAX             ;//幅度最大值

/*锁相环模块*/
clk_wiz_0 clk_u0
(
    .clk_125M                       (clk_125M           ),
    .reset                          (~rst_n             ),
    .locked                         (clk_locked         ),
    .clk_in1                        (clk_50M            ) 
);

/*采样解调模块*/
Demodulation u_Demodulation
(
    .clk                            (clk_125M           ),
    .rst_n                          (rst_n              ),
    
    .ADC_DCO_P                      (ADC_DCO_P          ),
    .ADC_DCO_N                      (ADC_DCO_N          ),
    .ADC_DIN_A                      (ADC_DIN_A          ),
    .ADC_DIN_B                      (ADC_DIN_B          ),
    .ADC_CLK                        (ADC_CLK            ),
    .ADC_PDWN                       (ADC_PDWN           ),
    
    .DAC_CLK                        (DAC_CLK            ),
    .dac_data                       (dac_data           ),
    //传出数据
    .Freq_over                      (Freq_over          ),    
    .AM_FM_over                     (AM_FM_over         ),    
    .AM_FM                          (AM_FM              ),
    .carrier_freq                   (carrier_freq       ),    
    .max_freq_addr                  (max_freq_addr      ),
    .AMP_MAX                        (AMP_MAX            )
);

/*串口通信模块*/
UART u_UART
(
    .clk                            (clk_125M           ),
    .rst_n                          (rst_n              ),
    
    .Freq_over                      (Freq_over          ),    
    .AM_FM_over                     (AM_FM_over         ),    
    .AM_FM                          (AM_FM              ),
    .carrier_freq                   (carrier_freq       ),    
    .max_freq_addr                  (max_freq_addr      ),
    .AMP_MAX                        (AMP_MAX            ),    
    
    .uart_tx                        (uart_tx            )    
);
endmodule
