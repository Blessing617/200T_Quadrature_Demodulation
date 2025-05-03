module OUPUT_CHOSE
(
    input                               clk                        ,
    input                               rst_n                      ,
    input       signed [  13:0]         AM_DATA                    ,
    input       signed [  13:0]         FM_DATA                    ,
    input              [   2:0]         AM_FM                      ,
    output      signed [  13:0]         data_out                    
    );

parameter                              FM = 3'b100                ;
parameter                              AM = 3'b010                ;
parameter                              Carrier = 3'b001           ;
parameter                              idle = 3'b000              ;

reg                    [  13:0]         data_out_reg               ;

assign data_out = data_out_reg;

//-----------------------------------------------
// 
//-----------------------------------------------
always @ (posedge clk or negedge rst_n)
if(!rst_n)
    data_out_reg <= 0;
else if (AM_FM == AM)
    data_out_reg <= AM_DATA;
else if (AM_FM == FM)
    data_out_reg <= FM_DATA;
else
    data_out_reg <= 0;

endmodule