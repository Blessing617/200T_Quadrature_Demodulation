module FM_DEMOD (
    input                               clk                        ,
    input                               rst_n                      ,
    input       signed [  15:0]         I_data                     ,
    input       signed [  15:0]         Q_data                     ,
    output      signed [  31:0]         data_out                    
    );

reg             signed [  15:0]         I_data_T                   ;
reg             signed [  15:0]         Q_data_T                   ;
reg             signed [  31:0]         data_out_reg               ;

assign data_out = data_out_reg;

// I(n-1)*Q(n) -I(n)*Q(n-1)
always @ (posedge clk or negedge rst_n)
if(!rst_n)
    begin 
        I_data_T <= 0;
        Q_data_T <= 0; 
    end
else
    begin 
        I_data_T <= I_data;
        Q_data_T <= Q_data;
        data_out_reg <= I_data_T * Q_data - I_data * Q_data_T;   
    end
endmodule