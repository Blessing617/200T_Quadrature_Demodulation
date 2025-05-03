module FFT_NonRealTIME
#
(
    parameter                           Npoint = 4096               
)
(
    input                               clk                        ,
    input                               rst_n                      ,
    input                               data_valid                 ,

    input              [  15:0]         data_in                    ,

    output             [  28:0]         FFT_IM                     ,
    output             [  28:0]         FFT_RE                     ,
    output             [  11:0]         FFT_index                  ,

    output                              FFT_data_tvalid            ,
    output                              FFT_data_tlast              
    );

//-----------------------------------------------
// input data
//------------------------------------------------
reg                    [  31:0]         FFT_data_in                ;

reg                                     s_axis_data_tvalid         ;
wire                                    s_axis_data_tready         ;
reg                                     s_axis_data_tlast          ;

reg                    [  15:0]         count                      ;

// data_tvalid
always @(posedge clk or negedge rst_n)
if (!rst_n)
    s_axis_data_tvalid <= 0;
else if (data_valid)
    s_axis_data_tvalid <= 1;
else if (s_axis_data_tlast)
    s_axis_data_tvalid <= 0;
else
    s_axis_data_tvalid <= s_axis_data_tvalid;

// data_tlast
always @(posedge clk or negedge rst_n)
if (!rst_n)
    s_axis_data_tlast <= 0;
else if (count == Npoint)
    s_axis_data_tlast <= 1;
else
    s_axis_data_tlast <= s_axis_data_tlast;

// data
always @(posedge clk or negedge rst_n)
if (!rst_n)
    FFT_data_in <= 32'd0;
else if (s_axis_data_tvalid && s_axis_data_tready)                  // 握手 更新数据
    FFT_data_in <= {16'd0,data_in};
else
    FFT_data_in <= FFT_data_in;

// count
always @(posedge clk or negedge rst_n)
if (!rst_n)
    count <= 16'd0;
else if (count == Npoint)
    count <= 16'd0;
else
    count <= count + 1;

//-----------------------------------------------
// output data
//------------------------------------------------
wire                   [  63:0]         m_axis_data_tdata          ;
wire                   [  15:0]         m_axis_data_tuser          ;


assign FFT_IM = m_axis_data_tdata[60:32];
assign FFT_RE = m_axis_data_tdata[28:0];

assign FFT_index = m_axis_data_tuser[11:0];

//-----------------------------------------------
// 
//------------------------------------------------

xfft_0 u_FFT (
    .aclk                              (clk                       ),// input wire aclk
    .aresetn                           (rst_n                     ),// input wire aresetn
    
    .s_axis_config_tdata               ({7'd0,1'd1}               ),// input wire [7 : 0] s_axis_config_tdata
    .s_axis_config_tvalid              (1'd1                      ),// input wire s_axis_config_tvalid
    .s_axis_config_tready              (                          ),// output wire s_axis_config_tready
    
    .s_axis_data_tdata                 (FFT_data_in               ),// input wire [31 : 0] s_axis_data_tdata
    .s_axis_data_tvalid                (s_axis_data_tvalid        ),// input wire s_axis_data_tvalid
    .s_axis_data_tready                (s_axis_data_tready        ),// output wire s_axis_data_tready
    .s_axis_data_tlast                 (s_axis_data_tlast         ),// input wire s_axis_data_tlast
    
    .m_axis_data_tdata                 (m_axis_data_tdata         ),// output wire [63 : 0] m_axis_data_tdata
    .m_axis_data_tuser                 (m_axis_data_tuser         ),// output wire [15 : 0] m_axis_data_tuser
    .m_axis_data_tvalid                (FFT_data_tvalid           ),// output wire m_axis_data_tvalid
    .m_axis_data_tready                (1'd1                      ),// input wire m_axis_data_tready
    .m_axis_data_tlast                 (FFT_data_tlast            ),// output wire m_axis_data_tlast
    
    .event_frame_started               (                          ),// output wire event_frame_started
    .event_tlast_unexpected            (                          ),// output wire event_tlast_unexpected
    .event_tlast_missing               (                          ),// output wire event_tlast_missing
    .event_status_channel_halt         (                          ),// output wire event_status_channel_halt
    .event_data_in_channel_halt        (                          ),// output wire event_data_in_channel_halt
    .event_data_out_channel_halt       (                          ) // output wire event_data_out_channel_halt
);

endmodule

