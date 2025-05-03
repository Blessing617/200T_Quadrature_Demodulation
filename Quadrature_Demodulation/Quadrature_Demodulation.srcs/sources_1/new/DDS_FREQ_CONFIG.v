module DDS_FREQ_CONFIG
(
    input                               clk                        ,
    input                               rst_n                      ,
    
    input                               freq_add                   ,
    input                               freq_sub                   ,

    output                              dds_config_vaild           ,
    output             [  16:0]         dds_config_data             
);

    parameter                           FREQ_INIT = 17'h7AE1       ; // 30M / (125M/(2^16))  
    parameter                           dds_1M = 17'h418           ;//1M / (125M/(2^16))  

reg                    [  16:0]         dds_config_data_reg        ;
reg                                     dds_config_vaild_reg       ;
reg                                     dds_config_vaild_reg1      ;

assign dds_config_vaild   = dds_config_vaild_reg1;
assign dds_config_data    = dds_config_data_reg;

// dds_config_data 更新数据
always@(posedge clk or negedge rst_n)
    if(rst_n == 1'b0)
        dds_config_data_reg <= FREQ_INIT;
    else if (freq_add)
        dds_config_data_reg <= dds_config_data_reg + dds_1M;
    else if (freq_sub)
        dds_config_data_reg <= dds_config_data_reg - dds_1M;
    else
        dds_config_data_reg <= dds_config_data_reg;

// dds_config_vaild_reg 
always@(posedge clk or negedge rst_n)
    if(rst_n == 1'b0)
        dds_config_vaild_reg <= 1'b0;
    else if (freq_add || freq_sub)
        dds_config_vaild_reg <= 1'b1;
    else
        dds_config_vaild_reg <= 1'b0;

// dds_config_vaild_reg1 打一�?
always@(posedge clk or negedge rst_n)
    if(rst_n == 1'b0)
        dds_config_vaild_reg1 <= 1'b0;
    else if (dds_config_vaild_reg)
        dds_config_vaild_reg1 <= 1'b1;
    else
        dds_config_vaild_reg1 <= 1'b0;




endmodule