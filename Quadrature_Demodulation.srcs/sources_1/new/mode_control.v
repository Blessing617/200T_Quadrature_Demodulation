module mode_control
(
    input                               clk                        ,
    input                               rst_n                      ,
    input              [   7:0]         Line_num                   ,
    input                               Line_over                  ,

    output             [   2:0]         AM_FM                      ,
    output                              AM_FM_over                  
    );

parameter                               FM = 3'b100                ;
parameter                               AM = 3'b010                ;
parameter                               Carrier = 3'b001           ;
parameter                               idle = 3'b000              ;

    
reg                    [   2:0]         AM_FM_reg                  ;
reg                                     AM_FM_over_reg             ;

reg                                     FM_en                      ;

reg                                     cnt_en                     ;
reg                    [   7:0]         over_cnt                   ;
parameter                               over_cnt_max = 8'd10       ;

assign AM_FM = AM_FM_reg;
assign AM_FM_over  = AM_FM_over_reg;

always @ (posedge clk or negedge rst_n)
if(!rst_n)
    AM_FM_reg <= idle;
else if (Line_over == 1)begin
    if (Line_num == 8'd3)
        AM_FM_reg <= AM;
    else if (Line_num >= 8'd4 && FM_en == 1 )
        AM_FM_reg <= FM;
    else if(Line_num < 8'd3 && Line_num > 8'd0)
        AM_FM_reg <= Carrier;
    else if(Line_num == 8'd0)
        AM_FM_reg <= idle;
    else
        AM_FM_reg <= AM;
end                                                    
else
    AM_FM_reg<=AM_FM_reg;

// cnt_en
always @ (posedge clk or negedge rst_n)
if(!rst_n)
    cnt_en<=0;
else if (over_cnt == over_cnt_max)
    cnt_en<=0;
else if (Line_num < 8'd4 && Line_over == 1)
    cnt_en<=0;
else if(Line_num >= 8'd4 && Line_over == 1)
    cnt_en<=1;
else
    cnt_en <= cnt_en;

// over_cnt
always @ (posedge clk or negedge rst_n)
if(!rst_n)
    over_cnt <= 0;
else if (over_cnt == over_cnt_max)
    over_cnt <= 0;
else if (Line_num < 8'd4 && Line_over == 1)
    over_cnt <= 0;
else if(cnt_en == 1 && Line_over == 1)
    over_cnt <= over_cnt + 1;
else
    over_cnt <= over_cnt;

// FM_en
always @ (posedge clk or negedge rst_n)
if(!rst_n)
    FM_en <= 0;
else if (Line_num < 8'd4 && Line_over == 1) 
    FM_en <= 0;
else if(over_cnt == over_cnt_max && cnt_en == 1)
    FM_en <= 1;
else
    FM_en <= FM_en;

// AM_FM_over_reg
always @ (posedge clk or negedge rst_n)
if(!rst_n)
    AM_FM_over_reg <= 0;
else if (Line_num < 8'd4 && Line_over == 1)
    AM_FM_over_reg <= 1;
else if (Line_num >= 8'd4 && FM_en == 1 && Line_over == 1)
    AM_FM_over_reg <= 1;
else
    AM_FM_over_reg <= 0;

endmodule