// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Mar 11 15:24:38 2024
// Host        : Blessing running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dds_compiler_1_sim_netlist.v
// Design      : dds_compiler_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_compiler_1,dds_compiler_v6_0_22,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_22,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    s_axis_config_tvalid,
    s_axis_config_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_CONFIG, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_config_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TDATA" *) input [15:0]s_axis_config_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [15:0]m_axis_data_tdata;

  wire aclk;
  wire [15:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [15:0]s_axis_config_tdata;
  wire s_axis_config_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [15:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [15:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [15:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "16" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "1" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "16" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "2" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "1" *) 
  (* C_PHASE_INCREMENT_VALUE = "11110101110000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "2" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "16" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_22 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[15:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[15:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[15:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(NLW_U0_m_axis_phase_tdata_UNCONNECTED[0]),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_U0_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(s_axis_config_tdata),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(s_axis_config_tvalid),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QAFh5C9VXVkSe/qIraO9mChLOxZ/WqWfof18iJd06zvvAfu7oC1TLbChkY41FyCMF89f2MggT0zZ
XzO4KWH6JNtkhEx9CFK5TxXov34SVXeNN2XP/ooZLSXPjx+1oUp0b5F8Tx4jPkWrhZ2/baiLhczm
eVYKE6ril8/FkXgMUz8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nuZpMOflCpu+EmQxZWbULOf7JzsPkCLDWbGpBd7ANdz9ShkKtTDVi0SRNm7ePgBqUlDqGHnQCZJh
vQg5wfvX9ccUQKBYSSc57ChyzU7ydUzaT0ER09OLepvW7z/oE/J/raA33cACHBTmlWd3YOwAdQEL
W9uQs81MX9Lc095uHEGR5je9S36q2trbyyyl4ZCv6/7OapHD3JTHFFC/u0s8i/NPk6nCjMlI3aYV
6F3+SY1yWSkKuiDh2zLcHqFSCWPZ27GYmS1q/bCzqsyOxy7vj3EGNrWCzkF5ssodp89qqHn+wTrK
eQIfoHWxhAHEgxSbCGkP4032+gg0CG2ccXrTgA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
AtieNO6aUHIX/3iLcWTl1w86vDBOb39SxXq5G2k9nDNTia/tkttN/z12G6Ere0RvAgf5v/kJY8FZ
Uh5Wr1gT/fbRs+cLdIZyI5XuwmTNMFoO0MvEfKgVNxtEujr/HzGR2KNFmYvKwLN3ciFSWuJq7A5T
MOkGVgJnlj10FtGVkU4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g2AJz6YcKkhnjDppBLTqIZ/1F5x+Yr4ITTAcL8i07fMw6/l+t/0vQ4PcqAqaGJwQgc2MtDlE4j9v
xOE4Tolf2MO1D7ZTycEVUiaHQ9H+Wr5pvNI3wcdVKobRmNZOZ9JU76SCCvM4o0OoQz8YRY2d6zcZ
5iC2KdxMB/1W+hwv+6M63lojuRrSrDeKTaNCRTjtsnr9UzGwRdjuxZVOCkv9Qq+uUn8zOrHevZTE
HcbED/Xeii5/sL4dEQyb9oxTHW76flG65p0iGkmik8JBV39SMgIZ46fWHXaxDx1jIReI3g/p3jbZ
JVgC0fGatPCVUrD4Ec4gSO3UEl6cNoLDmAtbCg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YqPATy8Zz9YiCAQho6xk3tcysgr5L6g2GU8V9qThv90PMOBjqR4HBMCPUvlWw+SygY5ZjouNfO16
OX2dw0KHKYFrIcei8+u0iBlE15eyxNUWLQXRIu2o/cVPhbt9Bl8HU/5SG2qmM4aj4HoH6MMzRYys
aKeQxmMfOUQiBwFMQq4ijLZ45Vh8Y//xtTYgy4XGK/DGuptPomnil3Qw7dXGE9DYmLznRj3ev4Yd
y/ZWVDBkpVS9oSUFjbHe7OE9nsKZu7uMRpaaWVMEhFSj4iLHGmIOK5NepfaAacd1fwunEhfMw2K7
E9YZJJFZPL+iH6VXjPhedI2/Qvr3ZjP6I5w3yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
isyK9b7HLcAWPTIHUTOizgLPCBbbV5ZArY8oBZuAr0eDPRl+PNs8DyDronOYL7bTwyJsiW0ot+8h
i6Umo6mbsoLmUvBzN5BlfMtia17QhosjIRCO4e6W45OzyGUTltpf9M6wL9i5rzPw7oq/j8hNEkFh
dIzsGQERiyAD8nV0Bd1yRkwyTyKMbqEQBoIntBpf+pVP+TThX9/8U1dn14+ItuqgUEitb78ws9+8
hrOTFfN41QKnalTCnm3k+CiLqQFz2swdTmg04ltk9u/IbhokyvvwidrQW35ILcALcaGAnXiflxgD
X3oQzIVmUKt5ehOKSpLK+06ozeDxMJSvkM5dlA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mVetrYYQK8XFCuyYS9DCVsSl3PlBe19XCYtTOdy9pMQVnm2/PXGA7u4NHU24Lwxt8m/Yo2XwZizc
xaRzQd0N3p6eNjiTVS0nozpvw1NBfVOna+9lJqFLAjEzT+8DdysaCHT+8iPp4GcDHal155gbsIHT
IVdtVzdRbUHUP9PqGoaiOKepgW4F3xwD7z+aLtKN8Sz/asMibJnra6rSS+0HyFNeOQbETj8D/wl2
I6kEcrA074p7gXkUUGaFN1cIV1GdfYq8LeXETWZyXvSOumKDrmT5rjiRMJ4rKcW9FKTDj/wPU1RF
DN3MLSr2BaxorfgmNtBmTdCcf/gQWYCuKWjL1A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
eVbGfSF8F0d8wQQO9uzQzqPZdqxy76oFY3uyivf5BaJwyKjvDOX/gtBJ0gTW1UsX5SPdEmDARP4Q
FFdwUEIZoI7g/JEfqo93H8dbBuJC8lHevnI8hK8sQTfUcCQqwvfGK93wZ/lvQLgQPGSRM14HRtdt
Q65aJ6Q3+23VyaZXSrCd6VJtz22odekGKO33c0MHec42oH6Muk74c1K8C/bg+dw9NGeOUsyt4Lbx
6nh8NLjll7f/ybmN6PRFuLDm0ranjrhTTV23y08rDvHs1dE5v55egCh+/0AB+XKKQTf+OLkHgOjl
G8ZjbIjHAx39FMM2UUmJ30Mwkgb1EDnwyTRmtjadjD5Lr1pAppeMcuk0eL/XS3r2R5URmY75pgfH
o58WIIQtvZYjVVRladq12v3etuzqrLuEpoBJxgH8KN2qgNSLZSq+oqEWNOJQDc0kUfQCIDapSKqh
RNK8j0OjMtqlHAxI1SnvQxsAPNjvhECs8dy1A6gNXJQ84XYd6NsA8vZ0

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jRnbW2CASIztmPMSjY9ilENfxgDe0IG9xDtvy1hJCP0ytSWv/cNsb/3ncwBa3qdEJ9YpnNOU91XS
UWShlDk47XNj83NkCithdmnpZET7KhZngOO/1HqLc2UpSnqu9GEFi5feSyMJeapAOCJTs14ofos0
fRq3u4fk2+cIplNN9J6byv5p15Ps9t8GbTo9DVOpCnJhEEtr12UYYPkQL+EFTLBEikMq7cCva3hU
b75rGl7OpPP+8gEYYJ2X7vClcMmgp7Tx4secgekATSE6i7A3ifJ60baBDnABV9GO2QNHUcYpULMb
FYr5R2ejHRHlUT1h2iDsOT6+MEqSjG8s5SBO+Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YNFwqT9z08PmpHw5s3MgXFt6DGXY3GXTox+wX7RLvRH5cF8OVzVAt2yNHHDSVAzse2nedm6nN0xT
7HmwvEnC5+FU11JDS7YrmvBNp9Dfq1xow9sPk6YZpKdb+vbeaSXi3f0HC/OjzJ53CndXy9xJkzUC
d37lwTGPoMzO7n70DzZmqkREOYpCLWn9wbd6D+SdwjdHikJ7VRdrnTlAbpNEwT399o+iUE8eN7+q
QziZVWLTvW36XGLvI0vOh90lE5AXmBnPEyYd78NjgXEuoRnOk9WBXI1QZ7i97gU5H6zwc0jG9Evj
SAdNAiJngiLtUKYszreF+opz2ZY12HwWQvoWXQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HARl7KStOQBwyGxvluxv3y5bTzkiLOxwvCo3hgNifefnrJyDat22HEd4PLefugiMM4OWQn7ylHiP
qzGdDZaR5YzUnpPJ01PceRsWd+umunjr+O5FRFeg3aXphmuXS3WSNsVB44DgOHMtuxdNB59odzOb
Xr+BvYQm4iK1nSvrbQmKPR/squkWcUOQm9rsgkmpybJx7Tn9ZApM85id/9g+H2kluOm8B7u93x3v
Ge5TSARILug/w3pevYv5gAyU9iuBZB4EEu7Ea+tJzOdTbzaq8t9Buf1f55WHtVj76bxZ72e+usQA
irj1KwQ6/5Dyrn3QTihFvY8YQVx0Kn4jD5X0Bg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51056)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
