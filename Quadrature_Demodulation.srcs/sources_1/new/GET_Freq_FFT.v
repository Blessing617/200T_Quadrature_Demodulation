module GET_Freq_FFT
#(
    parameter                           FREQ_RSL = 31'd24          ,
    parameter                           threshold = 16'd600         
)
(
    input                               clk                        ,
    input                               rst_n                      ,
    
    // FFT结果
    input                               rd_en                      ,
    input              [  11:0]         rd_addr                    ,
    input              [  15:0]         fft_amp_ram_16             ,

    //�?大分量频�? 
    output             [  31:0]         max_freq                   ,
    output reg         [  31:0]         max_freq_addr              ,
    output                              Freq_over                   
);

    localparam                           ADDR_START  = 12'd10       ;
    localparam                           ADDR_END  = 12'd300        ;

reg                    [  15:0]         fft_amp_ram_16_reg1        ;
reg                    [  15:0]         fft_amp_ram_16_reg2        ;

reg                    [  31:0]         freq_value                 ;
reg                    [  31:0]         freq_addr                  ;

reg                    [  31:0]         max_freq_value             ;

reg                                     Freq_over_reg              ;

assign Freq_over = Freq_over_reg;

// max_freq
assign max_freq = max_freq_addr * FREQ_RSL;

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

// freq_value 
always @ (posedge clk or negedge rst_n)
if(!rst_n)
    freq_value <= 0;
else if (rd_addr == ADDR_START)
    freq_value <= 0;
else if(fft_amp_ram_16 < fft_amp_ram_16_reg1
                        && fft_amp_ram_16_reg1 > fft_amp_ram_16_reg2
                        && fft_amp_ram_16_reg1 >= threshold
                        && rd_addr <= ADDR_END && rd_addr > ADDR_START)
    freq_value <= fft_amp_ram_16_reg1;
else
   freq_value <= freq_value;

// freq_addr
always @ (posedge clk or negedge rst_n)
if(!rst_n)
    freq_addr <= 0;
else if (rd_addr == ADDR_START)
    freq_addr <= 0;
else if(fft_amp_ram_16 < fft_amp_ram_16_reg1
                        && fft_amp_ram_16_reg1 > fft_amp_ram_16_reg2
                        && fft_amp_ram_16_reg1 >= threshold
                        && rd_addr <= ADDR_END && rd_addr > ADDR_START)
    freq_addr <= rd_addr;
else
   freq_addr <= freq_addr;

// max_freq_value / addr
always @ (posedge clk or negedge rst_n)
if(!rst_n) begin
    max_freq_value <= 0;
    max_freq_addr <= 0;
end
else if (rd_addr == ADDR_START) begin
    max_freq_value <= 0;
    max_freq_addr <= 0;
end
else if(max_freq_value < freq_value)begin
    max_freq_value <= freq_value;
    max_freq_addr <= freq_addr - 2;                         
end
else begin
    max_freq_value <= max_freq_value;
    max_freq_addr <= max_freq_addr;
end

// Freq_over_reg
always @ (posedge clk or negedge rst_n)
if(!rst_n)
    Freq_over_reg <= 0;
else if (rd_addr == ADDR_END)
    Freq_over_reg <= 1;
else
    Freq_over_reg <= 0;

endmodule
