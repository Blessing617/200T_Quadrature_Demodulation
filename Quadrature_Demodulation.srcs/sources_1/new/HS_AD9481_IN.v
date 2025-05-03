module HS_AD9481_IN(
    input                   clk         ,
    input                   rst_n       ,
    input                   dco_p       ,
    input                   dco_n       ,
	
    input       [ 7:0]      din_a       ,
    input       [ 7:0]      din_b       ,
	
    output                  adc_clk     ,
    output      [ 7:0]      dout        ,
    output                  pdwn                        
);

reg         [ 7:0]          din_a_r     ;
reg         [ 7:0]          din_b_r     ;

wire                        rdempty_sig ;
reg                         rdreq_sig   ;

assign adc_clk = clk;
assign pdwn    = ~rst_n;

always @(posedge dco_n)
begin
    din_a_r <= din_a;
end

always @(posedge dco_p)
begin
    din_b_r <= din_b;
end

always @(posedge clk)
begin
    if (!rst_n)
    begin
        rdreq_sig <= 1'b0;
    end
    else
    begin
        rdreq_sig <= ~rdempty_sig;
    end
end

wire                        full                        ;

fifo_generator_0 fifo_16to8_inst
(
    .rst                        (~rst_n                 ),// input wire rst
    .wr_clk                     (dco_n                  ),// input wire wr_clk
    .rd_clk                     (clk                    ),// input wire rd_clk
    .din                        ({din_a_r, din_b_r}     ),// input wire [15 : 0] din
    .wr_en                      (1'b1                   ),// input wire wr_en
    .rd_en                      (rdreq_sig              ),// input wire rd_en
    .dout                       (dout                   ),// output wire [7 : 0] dout
    .full                       (full                   ),// output wire full
    .empty                      (rdempty_sig            ) // output wire empty
);

endmodule
