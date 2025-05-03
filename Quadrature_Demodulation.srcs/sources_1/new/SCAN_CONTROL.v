module SCAN_CONTROL
#(
    parameter                           freq_init = 8'd60          ,
    parameter                           freq_max = 8'd60           ,
    parameter                           freq_min = 8'd10            
)
(
    input                               clk                        ,
    input                               rst_n                      ,

    input              [ 2:0]           AM_FM                      ,
    input                               AM_FM_over                 ,

    output              reg             freq_add                   ,
    output              reg             freq_sub                   ,

    output             [ 7:0]           carrier_freq                
    );

localparam                              judge = 4'b0001            ;
localparam                              add   = 4'b0010            ;
localparam                              sub   = 4'b0100            ;

reg                    [ 3:0]           state                      ;
reg                    [ 3:0]           add_sub                    ;

reg                    [ 7:0]           freq_cnt                   ;
reg                    [ 7:0]           add_sub_cnt                ;

assign carrier_freq = freq_cnt;

// state
always @ (posedge clk or negedge  rst_n)
if(!rst_n)
    state <= judge;
else if (AM_FM_over && AM_FM == 3'b000)begin
    if(add_sub == sub)
        state <= sub;
    else if(add_sub == add)
        state <= add;
end
else
    state <= judge;

// add_sub
always @ (posedge clk or negedge rst_n)
if(!rst_n)begin
    add_sub <= sub;
    add_sub_cnt <= 0;
end
else if (add_sub == sub && state == sub)begin
    if (add_sub_cnt == freq_max - freq_min - 1)begin
        add_sub_cnt <= 0;
        add_sub <= add;
    end
    else begin
        add_sub_cnt <= add_sub_cnt + 1;
    end
end
else if (add_sub == add && state == add)begin
    if (add_sub_cnt == freq_max - freq_min - 1)begin
        add_sub_cnt <= 0;
        add_sub <= sub;
    end
    else begin
        add_sub_cnt <= add_sub_cnt + 1;
    end
end
else begin
    add_sub <= add_sub;
    add_sub_cnt <= add_sub_cnt;
end

// freq_cnt
always @ (posedge clk or negedge rst_n)
if(!rst_n)
    freq_cnt <= freq_init;
else if(state == sub)
    freq_cnt <= freq_cnt - 1;
else if(state == add)
    freq_cnt <= freq_cnt + 1;
else
    freq_cnt <= freq_cnt;

// freq_add 
always @ (posedge clk or negedge rst_n)
if(!rst_n)
    freq_add<=0;
else if (state == add)begin
    freq_add <= 1;
end
else
    freq_add<=0;

// freq_sub 
always @ (posedge clk or negedge rst_n)
if(!rst_n)
    freq_sub<=0;
else if (state == sub)begin
    freq_sub <= 1;
end
else
    freq_sub<=0;

endmodule