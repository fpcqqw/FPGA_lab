// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module MainDesign (
  led,
  sysclk,
  sw
);

  (* X_INTERFACE_IGNORE = "true" *)
  output [3:0]led;
  (* X_INTERFACE_IGNORE = "true" *)
  input sysclk;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]sw;

  // stub module has no contents

endmodule
