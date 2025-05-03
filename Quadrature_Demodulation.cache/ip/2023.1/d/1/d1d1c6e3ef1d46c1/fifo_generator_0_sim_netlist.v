// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Mar 11 15:20:51 2024
// Host        : Blessing running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
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
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [15:0]din;
  wire [7:0]dout;
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
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [10:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
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
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1021" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1020" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
  (* C_RD_DEPTH = "2048" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "11" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
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
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[10:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

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
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
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
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
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
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
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
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire [9:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  wire [10:0]dest_out_bin;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

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
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(binval[5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[5]),
        .O(binval[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .I5(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [10]),
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
        .D(\dest_graysync_ff[1] [10]),
        .Q(dest_out_bin[10]),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
        .D(src_in_bin[10]),
        .Q(async_path[10]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 115712)
`pragma protect data_block
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
89M=
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
