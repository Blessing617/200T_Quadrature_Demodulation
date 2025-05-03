module DDS_FREQ_CONFIG
(
    input                               clk                         ,
    input                               rst_n                       ,
    
    input                               freq_add                    ,
    input                               freq_sub                    ,

    output                              dds_config_vaild            ,
    output             [15:0]           dds_config_data             
);

parameter                               FREQ_INIT = 16'd15_729      ;// 30M/(125M/(2^16))  
parameter                               dds_1M = 16'd524            ;//1 M/(125M/(2^16))  

reg                 [15:0]              dds_config_data_reg         ;
reg                                     dds_config_vaild_reg        ;
reg                                     dds_config_vaild_reg1       ;

assign dds_config_vaild   = dds_config_vaild_reg1                   ;
assign dds_config_data    = dds_config_data_reg                     ;

// dds_config_data 
always@(posedge clk or negedge rst_n)
if(!rst_n)
    dds_config_data_reg <= FREQ_INIT;
else if (freq_add)
    dds_config_data_reg <= dds_config_data_reg + dds_1M;
else if (freq_sub)
    dds_config_data_reg <= dds_config_data_reg - dds_1M;
else
    dds_config_data_reg <= dds_config_data_reg;

// dds_config_vaild_reg 
always@(posedge clk or negedge rst_n)
if(!rst_n)
    dds_config_vaild_reg <= 1'b0;
else if (freq_add || freq_sub)
    dds_config_vaild_reg <= 1'b1;
else
    dds_config_vaild_reg <= 1'b0;

// dds_config_vaild_reg1
always@(posedge clk or negedge rst_n)
if(!rst_n)
    dds_config_vaild_reg1 <= 1'b0;
else if (dds_config_vaild_reg)
    dds_config_vaild_reg1 <= 1'b1;
else
    dds_config_vaild_reg1 <= 1'b0;

endmodule