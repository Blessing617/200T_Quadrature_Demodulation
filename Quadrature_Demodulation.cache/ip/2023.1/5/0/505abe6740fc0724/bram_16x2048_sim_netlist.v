// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Mar 11 15:41:23 2024
// Host        : Blessing running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bram_16x2048_sim_netlist.v
// Design      : bram_16x2048
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bram_16x2048,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [11:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_douta_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     9.0695 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "bram_16x2048.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[15:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 45984)
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
