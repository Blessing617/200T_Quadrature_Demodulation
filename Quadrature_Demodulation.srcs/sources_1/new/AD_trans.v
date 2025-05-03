//--------------------------------------
// 无符号位-->有符号位
//--------------------------------------
module AD_trans
(
    input               [ 7:0]          ad_data         ,
    output      signed  [ 7:0]          ad_signed                   
);

wire                                    sign            ;

assign ad_signed = { ad_data - 8'd128 };
//--------------------------------------
// 正负符号位 1 负
//--------------------------------------
assign  sign = (ad_data < 8'd128) ? 1'b1 : 1'b0;

endmodule