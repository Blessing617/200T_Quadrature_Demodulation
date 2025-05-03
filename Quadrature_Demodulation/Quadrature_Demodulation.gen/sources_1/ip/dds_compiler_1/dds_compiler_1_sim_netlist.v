// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Mar 11 15:24:39 2024
// Host        : Blessing running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Xilinx/Project/200t/Quadrature_Demodulation/Quadrature_Demodulation/Quadrature_Demodulation.gen/sources_1/ip/dds_compiler_1/dds_compiler_1_sim_netlist.v
// Design      : dds_compiler_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_compiler_1,dds_compiler_v6_0_22,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_22,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dds_compiler_1
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
  dds_compiler_1_dds_compiler_v6_0_22 U0
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
l5cykobhN3TQ5C4KjqlKHf8BKnbjrw7aGdqn90SyfbmRAdd9Yd3ULozNzHZj8VRwpsky8RVzZdt9
N0NI9HiX6S55Ic0T1LeksiHTVqNnhQ9cXEaFEs1e4rhpbKt+e6y9a7vZdnrxXcz/LjzvXga+F/3p
rehhfwRexQXXoO35AsHT0sgea87nCh2dtm9vqrN+lb07G6ivnaOrQX3z0wZEQqa0Mc/tHix+t+gv
+hsusk5FbJRNDgKFdDAwV/nNjZjo6hRWzxtPm8sZVnHRQlRZfv2HdzopJr6D+E/AayUcQ5QlNvt/
BCrjue1wAC1+rDdX3Qk1pSyhgY+hsTzbhgiMlw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6qeUu4mOEvKsqfqBZ3AqKe6FH8wSUf/czIBhWuKjOKf5ej1McdJWkxZpIQQ/NtNnFxyJ5GLW0p4c
eCGUZ739KVlU5d0BHbzBmWYD6eANlEilDdFvjOKaUaATOOjIoxWV7CFhN74AsGs9JT6DXBZ3QAZ8
LwcldaSX/gE6szaPRWZx6ktLA4AZ9Pyeozqc25KmZapnY6/Jv61AlSDhpyu0gIYv6fAijH83qafI
1hI7g9WeSrLVSvZwQOBjOnwMXgix4bRqm1avoHeGo4Li5dFaJhGUFH5O9x7vcOc4mZyEWnBH9xDK
83P0K5zJQ5jlNYr8L7AbLrMlhu1jThU20NAWPA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 50784)
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
