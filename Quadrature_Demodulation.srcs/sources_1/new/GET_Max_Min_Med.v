module GET_Max_Min_Med
(
    input                               clk                        ,
    input                               rst_n                      ,
    input       signed [  13:0]         data_in                    ,
    input                               data_in_clear              ,

    output      signed [  13:0]         data_max                   ,
    output      signed [  13:0]         data_min                   ,
    output      signed [  13:0]         data_med                   
);

reg             signed [  13:0]         data_max_reg               ;
reg             signed [  13:0]         data_min_reg               ;
reg             signed [  13:0]         data_med_reg               ;

assign data_max = data_max_reg;
assign data_min = data_min_reg;
assign data_med = data_med_reg;

// data_max_reg
always @ (posedge clk or negedge rst_n)
if(!rst_n)
    data_max_reg <= 0;
else if (data_in_clear == 1)
    data_max_reg <= 0;
else if(data_max_reg < $signed(data_in))
    data_max_reg <= $signed(data_in);
else
    data_max_reg <= data_max_reg;

// data_min_reg
always @ (posedge clk or negedge rst_n)
if(!rst_n)
    data_min_reg <= 0;
else if (data_in_clear == 1)
    data_min_reg <= 0;
else if(data_min_reg > $signed(data_in))
    data_min_reg <= $signed(data_in);
else
    data_min_reg <= data_min_reg;

// data_med_reg
always @ (posedge clk or negedge rst_n)
if(!rst_n)
    data_med_reg <= 0;
else if (data_in_clear == 1)
    data_med_reg <= 0;
else 
    data_med_reg <= data_min_reg + ((data_max_reg - data_min_reg) >> 1); // 右移 �?2

endmodule