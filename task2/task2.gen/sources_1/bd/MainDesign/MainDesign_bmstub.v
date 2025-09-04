// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module MainDesign (
  led_0,
  sw,
  sysclk
);

  (* X_INTERFACE_IGNORE = "true" *)
  output [3:0]led_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]sw;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYSCLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.SYSCLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYSCLK, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN MainDesign_sysclk, INSERT_VIP 0" *)
  input sysclk;

  // stub module has no contents

endmodule
