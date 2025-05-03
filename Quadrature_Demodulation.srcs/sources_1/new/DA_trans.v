//--------------------------------------
// 有符号位-->无符号位
//--------------------------------------
module DA_trans
(
    input       signed [  13:0]         da_data                    ,
    output             [  13:0]         da_unsigned                 
);

wire    [13:0]  da_data_t = da_data;
assign da_unsigned = da_data_t + 14'b10_000_000_000_000;

endmodule