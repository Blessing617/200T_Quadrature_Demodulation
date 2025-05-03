module Demodulation
(
    input                               clk                 ,
    input                               rst_n               ,
    
    // AD9481
    input                               ADC_DCO_P           ,// 输入数据时钟
    input                               ADC_DCO_N           ,// 输入数据时钟
    input           [ 7:0]              ADC_DIN_A           ,// 输入数据
    input           [ 7:0]              ADC_DIN_B           ,// 输入数据
	
    output                              ADC_CLK             ,// ADC时钟
    output                              ADC_PDWN            ,// ADC掉电控制，高电平有效

    // DAC
    output                              DAC_CLK             ,
    output          [13:0]              dac_data            ,

    // 传递数据
    output                              Freq_over           ,  
    output                              AM_FM_over          ,  
    output          [ 2:0]              AM_FM               ,    
    output          [ 7:0]              carrier_freq        ,           
    output          [31:0]              max_freq_addr       ,
    output          [13:0]              AMP_MAX               
);

//-------------------------------------------------------------------
// clk
//-------------------------------------------------------------------
wire                                    clk_125M                ;
assign                                  clk_125M = clk          ;
//-------------------------------------------------------------------
// dds
//-------------------------------------------------------------------
wire                [15:0]              dds_data                ;
wire                [ 7:0]              dds_sin                 ;
wire                [ 7:0]              dds_cos                 ;
wire                                    dds_config_vaild        ;
wire                [15:0]              dds_config_data         ;

dds_compiler_1 u_dds 
(
    .aclk                               (clk_125M               ),// input wire aclk
    .s_axis_config_tvalid               (dds_config_vaild       ),// input wire s_axis_config_tvalid
    .s_axis_config_tdata                (dds_config_data        ),// input wire [15 : 0] s_axis_config_tdata
    .m_axis_data_tvalid                 (                       ),// output wire m_axis_data_tvalid
    .m_axis_data_tdata                  (dds_data               ) // output wire [15 : 0] m_axis_data_tdata
);

assign dds_sin = dds_data[7:0];
assign dds_cos = dds_data[15:8];

//-------------------------------------------------------------------
// 扫频
//-------------------------------------------------------------------
wire                                    freq_add                ;
wire                                    freq_sub                ;
DDS_FREQ_CONFIG u_DDS_FREQ_CONFIG
(
    .clk                                (clk_125M               ),
    .rst_n                              (rst_n                  ),
    .freq_add                           (freq_add               ),
    .freq_sub                           (freq_sub               ),
    .dds_config_vaild                   (dds_config_vaild       ),
    .dds_config_data                    (dds_config_data        ) 
);

SCAN_CONTROL#(
    .freq_init                          (8'd30                  ),
    .freq_max                           (8'd30                  ),
    .freq_min                           (8'd10                  ) 
)u_SCAN_CONTROL
(
    .clk                                (clk_125M               ),
    .rst_n                              (rst_n                  ),
    .AM_FM                              (AM_FM                  ),
    .AM_FM_over                         (AM_FM_over             ),
    .freq_add                           (freq_add               ),
    .freq_sub                           (freq_sub               ),
    .carrier_freq                       (carrier_freq           ) 
);

//-------------------------------------------------------------------
// ADC
//-------------------------------------------------------------------
// AD9481 驱动

wire                [ 7:0]              ad_data                 ;
wire        signed  [ 7:0]              ad_signed               ;

HS_AD9481_IN u_HS_AD9481_IN
(
    .clk                                (clk_125M               ),// 系统时钟 250MHz
    .rst_n                              (rst_n                  ),// 复位
    .dco_p                              (ADC_DCO_P              ),// 数据时钟 +
    .dco_n                              (ADC_DCO_N              ),// 数据时钟 -
	
    .din_a                              (ADC_DIN_A              ),// ADC端口A数据
    .din_b                              (ADC_DIN_B              ),// ADC端口B数据
	
    .adc_clk                            (ADC_CLK                ),// ADC时钟
    .dout                               (ad_data                ),// ADC合并后数据
    .pdwn                               (ADC_PDWN               ) // ADC掉电控制，高电平有效
);

// AD 数据转换有符号数
AD_trans u_AD_trans
(
    .ad_data                            (ad_data                ),
    .ad_signed                          (ad_signed              ) 
);

//-------------------------------------------------------------------
// 正交下变频
//-------------------------------------------------------------------
// MULT
wire                [15:0]              I_DATA_MULT             ;
wire                [15:0]              Q_DATA_MULT             ;

mult_gen_0 u_MULT_1 
(
    .CLK                                (clk_125M               ),// input wire CLK
    .A                                  (ad_signed              ),// input wire [7 : 0] A
    .B                                  (dds_sin                ),// input wire [7 : 0] B

    .P                                  (I_DATA_MULT            ) // output wire [15 : 0] P
);

mult_gen_0 u_MULT_2 
(
    .CLK                                (clk_125M               ),// input wire CLK
    .A                                  (ad_signed              ),// input wire [7 : 0] A
    .B                                  (dds_cos                ),// input wire [7 : 0] B

    .P                                  (Q_DATA_MULT            ) // output wire [15 : 0] P
);

// LPF   
wire                                    lpf_valid1              ;
wire                                    lpf_valid2              ;

wire                [39:0]              LPF_OUT1                ;
wire                [39:0]              LPF_OUT2                ;

wire                [34:0]              I_DATA                  ;
wire                [34:0]              Q_DATA                  ;

wire                [15:0]              I_DATA_16               ;
wire                [15:0]              Q_DATA_16               ;

fir_compiler_1 u_LPF_I 
(
    .aclk                               (clk_125M               ),// input wire aclk
    .s_axis_data_tvalid                 (1'b1                   ),// input wire s_axis_data_tvalid
    .s_axis_data_tready                 (                       ),// output wire s_axis_data_tready
    .s_axis_data_tdata                  (I_DATA_MULT            ),// input wire [15 : 0] s_axis_data_tdata
    .m_axis_data_tvalid                 (lpf_valid1             ),// output wire m_axis_data_tvalid
    .m_axis_data_tdata                  (LPF_OUT1               ) // output wire [39 : 0] m_axis_data_tdata
);
assign I_DATA = LPF_OUT1[34:0];

fir_compiler_1 u_LPF_Q 
(
    .aclk                               (clk_125M               ),// input wire aclk
    .s_axis_data_tvalid                 (1'b1                   ),// input wire s_axis_data_tvalid
    .s_axis_data_tready                 (                       ),// output wire s_axis_data_tready
    .s_axis_data_tdata                  (Q_DATA_MULT            ),// input wire [15 : 0] s_axis_data_tdata
    .m_axis_data_tvalid                 (lpf_valid2             ),// output wire m_axis_data_tvalid
    .m_axis_data_tdata                  (LPF_OUT2               ) // output wire [39 : 0] m_axis_data_tdata
);
assign Q_DATA = LPF_OUT2[34:0];

assign I_DATA_16  = I_DATA [34:19];
assign Q_DATA_16  = Q_DATA [34:19];

//-------------------------------------------------------------------
// 调制识别 ：FFT
//-------------------------------------------------------------------
wire                [47:0]              cic_dout_fft            ;
wire                                    cic_tvalid_fft          ;
wire                                    clk_500k                ;

wire                [15:0]              fft_dat_in              ;
wire                                    fifo_full               ;
wire                                    fifo_empty              ;

wire                                    rd_en                   ;
wire                [11:0]              rd_addr                 ;
wire                [15:0]              fft_amp_ram_16          ;

assign clk_500k = cic_tvalid_fft;

// CIC 250 倍抽取 
cic_compiler_16bit u_CIC_FFT_1 
(
    .aclk                               (clk_125M               ),// input wire aclk
    .s_axis_data_tdata                  (I_DATA_16              ),// input wire [15 : 0] s_axis_data_tdata
    .s_axis_data_tvalid                 (1'd1                   ),// input wire s_axis_data_tvalid
    .s_axis_data_tready                 (                       ),// output wire s_axis_data_tready
    .m_axis_data_tdata                  (cic_dout_fft           ),// output wire [47 : 0] m_axis_data_tdata
    .m_axis_data_tvalid                 (cic_tvalid_fft         ) // output wire m_axis_data_tvalid
);

// 时钟域转换 500KSPS
fifo_generator_fft u_fifo_generator_fft
(
    .rst                                (~rst_n                 ),// input wire rst
    .wr_clk                             (clk_500k               ),// input wire wr_clk
    .rd_clk                             (clk_500k               ),// input wire rd_clk
    .din                                (cic_dout_fft[47:32]    ),// input wire [15 : 0] din
    .wr_en                              (1'd1                   ),// input wire wr_en
    .rd_en                              (1'd1                   ),// input wire rd_en
    .dout                               (fft_dat_in             ),// output wire [15 : 0] dout
    .full                               (fifo_full              ),// output wire full
    .empty                              (fifo_empty             ) // output wire empty
);

// FFT
FFT u_FFT_1
(
    .clk                                (clk_500k               ),
    .rd_clk                             (clk_125M               ),
    .rst_n                              (rst_n                  ),
    .data_valid                         (1'd1                   ),
    .data_in                            (fft_dat_in             ),
    .rd_en                              (rd_en                  ),
    .rd_addr                            (rd_addr                ),
    .fft_amp_ram_16                     (fft_amp_ram_16         ) 
);

// 谱线检测
wire                [ 7:0]              Line_num                ;
wire                                    Line_over               ;

GET_LineNum_FFT#(
    .threshold                          (16'd700                ) 
)u_GET_LineNum_FFT
(
    .clk                                (clk_125M               ),
    .rst_n                              (rst_n                  ),
    .rd_en                              (rd_en                  ),
    .rd_addr                            (rd_addr                ),
    .fft_amp_ram_16                     (fft_amp_ram_16         ),

    .Line_num                           (Line_num               ),
    .Line_over                          (Line_over              ) 
);

// 调制判断
mode_control u_mode_control
(
    .clk                                (clk_125M               ),
    .rst_n                              (rst_n                  ),
    .Line_num                           (Line_num               ),
    .Line_over                          (Line_over              ),
    
    .AM_FM                              (AM_FM                  ),
    .AM_FM_over                         (AM_FM_over             ) 
);

//-------------------------------------------------------------------
// AM DEMOD : sqrt(I^2 + Q^2) 取模
//-------------------------------------------------------------------
wire                [27:0]              I_DATA_squre            ;
wire                [27:0]              Q_DATA_squre            ;
wire                [27:0]              I_Q_DATA_ADD            ;
wire                                    SQRT_DOUT_TVALID        ;
wire                [31:0]              AM_DEMOD_DATA           ;

mult_gen_1 u_mult_squre_1 
(
    .CLK                                (clk_125M               ),// input wire CLK
    .A                                  (I_DATA[34:21]          ),// input wire [13 : 0] A
    .B                                  (I_DATA[34:21]          ),// input wire [13 : 0] B
    
    .P                                  (I_DATA_squre           ) // output wire [27 : 0] P
);

mult_gen_1 u_mult_squre_2 
(
    .CLK                                (clk_125M               ),// input wire CLK
    .A                                  (Q_DATA[34:21]          ),// input wire [13 : 0] A
    .B                                  (Q_DATA[34:21]          ),// input wire [13 : 0] B
    
    .P                                  (Q_DATA_squre           ) // output wire [27 : 0] P
);

c_add_0 u_add 
(
    .A                                  (I_DATA_squre           ),// input wire [27 : 0] A
    .B                                  (Q_DATA_squre           ),// input wire [27 : 0] B
    .CLK                                (clk_125M               ),// input wire CLK
    
    .S                                  (I_Q_DATA_ADD           ) // output wire [27 : 0] S
);

cordic_0 u_sqrt
(
    .aclk                               (clk_125M               ),// input wire aclk
    .aresetn                            (rst_n                  ),// input wire aresetn
    .s_axis_cartesian_tvalid            (1'd1                   ),// input wire s_axis_cartesian_tvalid
    .s_axis_cartesian_tdata             (I_Q_DATA_ADD           ),// input wire [31 : 0] s_axis_cartesian_tdata
    .m_axis_dout_tvalid                 (SQRT_DOUT_TVALID       ),// output wire m_axis_dout_tvalid
    .m_axis_dout_tdata                  (AM_DEMOD_DATA          ) // output wire [31 : 0] m_axis_dout_tdata
);

//-------------------------------------------------------------------
// FM DEMOD : I(n)Q(n-1)-Q(n)I(n-1)
//-------------------------------------------------------------------
wire                [31:0]              FM_DEMOD_DATA           ;
wire                                    lpf_valid3              ;
wire                [39:0]              LPF_FM                  ;

FM_DEMOD u_FM_DEMOD
(
    .clk                                (clk_125M               ),
    .rst_n                              (rst_n                  ),
    .I_data                             (I_DATA_16              ),
    .Q_data                             (Q_DATA_16              ),
    .data_out                           (FM_DEMOD_DATA          ) 
);

fir_compiler_2 LPF_U1_fm 
(
    .aclk                               (clk_125M               ),// input wire aclk
    .s_axis_data_tvalid                 (1'b1                   ),// input wire s_axis_data_tvalid
    .s_axis_data_tready                 (                       ),// output wire s_axis_data_tready
    .s_axis_data_tdata                  (FM_DEMOD_DATA[16:1]    ),// input wire [15 : 0] s_axis_data_tdata
    .m_axis_data_tvalid                 (lpf_valid3             ),// output wire m_axis_data_tvalid
    .m_axis_data_tdata                  (LPF_FM                 ) // output wire [39 : 0] m_axis_data_tdata
);

//-------------------------------------------------------------------
// 抽取滤波
//-------------------------------------------------------------------
wire                                    clk_1M                  ;
wire                                    cic_am_tvalid           ;
wire                                    cic_fm_tvalid           ;

wire                [63:0]              CIC_AM_DEMOD_OUT        ;
wire                [63:0]              CIC_FM_DEMOD_OUT        ;

wire                [13:0]              AM_DEMOD_OUT            ;
wire                [13:0]              FM_DEMOD_OUT            ;

assign clk_1M = cic_am_tvalid;

// CIC 125 倍抽取 
cic_compiler_0 u_CIC_AM 
(
    .aclk                               (clk_125M               ),// input wire aclk
    .s_axis_data_tdata                  (AM_DEMOD_DATA          ),// input wire [31 : 0] s_axis_data_tdata
    .s_axis_data_tvalid                 (1'd1                   ),// input wire s_axis_data_tvalid
    .s_axis_data_tready                 (                       ),// output wire s_axis_data_tready
    .m_axis_data_tdata                  (CIC_AM_DEMOD_OUT       ),// output wire [63 : 0] m_axis_data_tdata
    .m_axis_data_tvalid                 (cic_am_tvalid          ) // output wire m_axis_data_tvalid
);

cic_compiler_0 u_CIC_FM 
(
    .aclk                               (clk_125M               ),// input wire aclk
    .s_axis_data_tdata                  (LPF_FM[33:2]           ),// input wire [31 : 0] s_axis_data_tdata
    .s_axis_data_tvalid                 (1'd1                   ),// input wire s_axis_data_tvalid
    .s_axis_data_tready                 (                       ),// output wire s_axis_data_tready
    .m_axis_data_tdata                  (CIC_FM_DEMOD_OUT       ),// output wire [63 : 0] m_axis_data_tdata
    .m_axis_data_tvalid                 (cic_fm_tvalid          ) // output wire m_axis_data_tvalid
);

assign AM_DEMOD_OUT = CIC_AM_DEMOD_OUT[59:46];
assign FM_DEMOD_OUT = CIC_FM_DEMOD_OUT[59:46];

//-------------------------------------------------------------------
// 输出选择
//------------------------------------------------------------------- 
wire                [13:0]              output_data             ;

OUPUT_CHOSE u_OUPUT_CHOSE
(
    .clk                                (clk_125M               ),
    .rst_n                              (rst_n                  ),
    .AM_DATA                            (AM_DEMOD_OUT           ),
    .FM_DATA                            (FM_DEMOD_OUT           ),
    .AM_FM                              (AM_FM                  ),
    .data_out                           (output_data            ) 
);

//-------------------------------------------------------------------
// DAC 14BITS  数据转换->无符号数
//-------------------------------------------------------------------
assign DAC_CLK = clk_125M;

DA_trans u1_DA_trans
(
    .da_data                            (output_data            ),
    .da_unsigned                        (dac_data               ) 
);

//-------------------------------------------------------------------
// 调制度计算
//------------------------------------------------------------------- 
wire                [13:0]              AMP_MIN                 ;
wire                [13:0]              AMP_Med                 ;
GET_Max_Min_Med u_GET_Max_Min_Med
(
    .clk                                (clk_125M               ),
    .rst_n                              (rst_n                  ),
    .data_in                            (output_data            ),
    .data_in_clear                      (AM_FM_over             ),

    .data_max                           (AMP_MAX                ),
    .data_min                           (AMP_MIN                ),
    .data_med                           (AMP_Med                ) 
);

//-------------------------------------------------------------------
// 求基带信号 频率
//------------------------------------------------------------------- 
wire                [55:0]              CIC_FFT                 ;
wire                [15:0]              FFT_DAT_IN2             ;

wire                [11:0]              rd_addr2                ;
wire                [15:0]              fft_amp_ram_162         ;

wire                [31:0]              max_freq                ;

wire                                    clk_100k                ;

assign FFT_DAT_IN2 = CIC_FFT[55:40] ;

// CIC 1250 倍抽取 
cic_14BITS_1250 u_CIC_FFT_2 
(
    .aclk                               (clk_125M               ),// input wire aclk
    .s_axis_data_tdata                  (output_data            ),// input wire [15 : 0] s_axis_data_tdata
    .s_axis_data_tvalid                 (1'd1                   ),// input wire s_axis_data_tvalid
    .s_axis_data_tready                 (                       ),// output wire s_axis_data_tready
    .m_axis_data_tdata                  (CIC_FFT                ),// output wire [55 : 0] m_axis_data_tdata
    .m_axis_data_tvalid                 (clk_100k               ) // output wire m_axis_data_tvalid
);

// FFT
FFT u_FFT_2
(
    .clk                                (clk_100k               ),
    .rd_clk                             (clk_125M               ),
    .rst_n                              (rst_n                  ),
    .data_valid                         (1'd1                   ),
    .data_in                            (FFT_DAT_IN2            ),

    .rd_en                              (                       ),
    .rd_addr                            (rd_addr2               ),
    .fft_amp_ram_16                     (fft_amp_ram_162        ) 
);

// 求 最大分量频率
GET_Freq_FFT#(
    .FREQ_RSL                           (31'd24                 ),
    .threshold                          (16'd700                ) 
)u_GET_Freq_FFT
(
    .clk                                (clk_125M               ),
    .rst_n                              (rst_n                  ),
    .rd_en                              (rd_en2                 ),
    .rd_addr                            (rd_addr2               ),
    .fft_amp_ram_16                     (fft_amp_ram_162        ),

    .max_freq                           (max_freq               ),
    .max_freq_addr                      (max_freq_addr          ),
    .Freq_over                          (Freq_over              ) 
);

endmodule