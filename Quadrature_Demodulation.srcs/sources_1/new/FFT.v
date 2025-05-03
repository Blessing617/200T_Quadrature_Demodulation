module FFT
(
    input                               clk                     ,
    input                               rd_clk                  ,
    input                               rst_n                   ,
    input                               data_valid              ,
    input              [15:0]           data_in                 ,

    // FFT
    output reg                          rd_en                   ,
    output reg         [11:0]           rd_addr                 ,
    output wire        [15:0]           fft_amp_ram_16              
);

parameter                               Npoint = 4096           ;

wire                                    FFT_data_tvalid         ;
wire                                    FFT_data_tlast          ;

wire                   [28:0]           FFT_IM                  ;
wire                   [28:0]           FFT_RE                  ;
wire                   [11:0]           FFT_index               ;
wire                   [55:0]           FFT_Amp                 ;

//-----------------------------------------------
// FFT 
//------------------------------------------------
FFT_NonRealTIME#(
    .Npoint                             (4096                   ) 
)u_FFT_NonRealTIME
(
    .clk                                (clk                    ),
    .rst_n                              (rst_n                  ),
    .data_valid                         (data_valid             ),
    .data_in                            (data_in                ),
    .FFT_IM                             (FFT_IM                 ),
    .FFT_RE                             (FFT_RE                 ),
    .FFT_index                          (FFT_index              ),
    .FFT_data_tvalid                    (FFT_data_tvalid        ),
    .FFT_data_tlast                     (FFT_data_tlast         ) 
);

assign FFT_Amp = $signed(FFT_IM)* $signed(FFT_IM)+ $signed(FFT_RE)* $signed(FFT_RE);

//-----------------------------------------------
// FFT ram
//------------------------------------------------
// rd_en
always @ (posedge rd_clk or negedge rst_n)
if(!rst_n)
    rd_en <= 0;
else if (rd_addr == Npoint - 1)
    rd_en <= 0;
else if (FFT_data_tlast == 1)
    rd_en <= 1;
else
    rd_en <= rd_en;

// rd_addr
always @ (posedge rd_clk or negedge rst_n)
if(!rst_n)
    rd_addr <= 0;
else if(rd_en==1)
    rd_addr <= rd_addr + 1;
else
    rd_addr <= rd_addr;

bram_16x2048 u_fft_ram_test (
    .clka                               (clk                    ),// input wire clka
    .ena                                (1'b1                   ),// input wire ena
    .wea                                (1'b1                   ),// input wire [0 : 0] wea
    .addra                              (FFT_index              ),// input wire [11 : 0] addra
    .dina                               (FFT_Amp[42:27]         ),// input wire [15 : 0] dina

    .clkb                               (rd_clk                 ),// input wire clkb
    .enb                                (rd_en                  ),// input wire enb
    .addrb                              (rd_addr                ),// input wire [11 : 0] addrb
    .doutb                              (fft_amp_ram_16         ) // output wire [15 : 0] doutb
); 

endmodule
