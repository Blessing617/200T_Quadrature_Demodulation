module GET_LineNum_FFT
#(
    parameter                           threshold = 16'd600         
)
(
    input                               clk                        ,
    input                               rst_n                      ,
    
    input                               rd_en                      ,
    input              [  11:0]         rd_addr                    ,
    input              [  15:0]         fft_amp_ram_16             ,

    output             [   7:0]         Line_num                   ,
    output                              Line_over                   
);

reg                    [  15:0]         fft_amp_ram_16_reg1        ;
reg                    [  15:0]         fft_amp_ram_16_reg2        ;

reg                                     Line_over_reg              ;
reg                    [   7:0]         Line_num_reg               ;

assign Line_over  = Line_over_reg;
assign Line_num   = Line_num_reg;

// 打两�?
always @ (posedge clk or negedge rst_n)
if(!rst_n)
    fft_amp_ram_16_reg1<=0;
else
    fft_amp_ram_16_reg1 <= fft_amp_ram_16;

always @ (posedge clk or negedge rst_n)
if(!rst_n)
    fft_amp_ram_16_reg2<=0;
else
    fft_amp_ram_16_reg2 <= fft_amp_ram_16_reg1;

// Line_num_reg
always @ (posedge clk or negedge rst_n)
if(!rst_n)
    Line_num_reg <= 0;
else if (rd_addr == 12'd1)
    Line_num_reg <= 0;
else if(fft_amp_ram_16 < fft_amp_ram_16_reg1
                        && fft_amp_ram_16_reg1 > fft_amp_ram_16_reg2
                        && fft_amp_ram_16_reg1 >= threshold
                        && rd_addr <= 12'd500 && rd_addr > 12'd1)
    Line_num_reg <= Line_num_reg + 1;
else
   Line_num_reg <= Line_num_reg;

// Line_over
always @ (posedge clk or negedge rst_n)
if(!rst_n)
    Line_over_reg <= 0;
else if (rd_addr == 12'd500)
    Line_over_reg <= 1;
else
    Line_over_reg <= 0;

endmodule
