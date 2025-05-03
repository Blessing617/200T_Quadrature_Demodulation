// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_15,Vivado 2023.1" *)
module c_add_0(A, B, CLK, S);
  input [27:0]A;
  input [27:0]B;
  input CLK /* synthesis syn_isclock = 1 */;
  output [27:0]S;
endmodule
