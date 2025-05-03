// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Mar 11 15:35:40 2024
// Host        : Blessing running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_fft_sim_netlist.v
// Design      : fifo_generator_fft
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_fft,fifo_generator_v13_2_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [15:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [11:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [11:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [11:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "12" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "4093" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "4092" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "12" *) 
  (* C_RD_DEPTH = "4096" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "12" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "12" *) 
  (* C_WR_DEPTH = "4096" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "12" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_8 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[11:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[11:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire [10:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  wire [11:0]dest_out_bin;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(binval[6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[6]),
        .O(binval[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .I5(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire [10:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  wire [11:0]dest_out_bin;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(binval[6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[6]),
        .O(binval[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .I5(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 142800)
`pragma protect data_block
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
XK4NKsooodjldlzJRCor
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
