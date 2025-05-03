// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Mar 11 15:45:05 2024
// Host        : Blessing running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Xilinx/Project/200t/Quadrature_Demodulation/Quadrature_Demodulation.gen/sources_1/ip/c_add_0/c_add_0_stub.v
// Design      : c_add_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_15,Vivado 2023.1" *)
module c_add_0(A, B, CLK, S)
/* synthesis syn_black_box black_box_pad_pin="A[27:0],B[27:0],S[27:0]" */
/* synthesis syn_force_seq_prim="CLK" */;
  input [27:0]A;
  input [27:0]B;
  input CLK /* synthesis syn_isclock = 1 */;
  output [27:0]S;
endmodule
