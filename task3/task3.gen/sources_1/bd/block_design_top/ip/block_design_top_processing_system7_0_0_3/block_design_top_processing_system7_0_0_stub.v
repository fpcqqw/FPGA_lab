// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Jul 16 16:02:05 2025
// Host        : Jenny running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Jenny2/Documents/02Semester/FPGA_lab/task3/task3.gen/sources_1/bd/block_design_top/ip/block_design_top_processing_system7_0_0_3/block_design_top_processing_system7_0_0_stub.v
// Design      : block_design_top_processing_system7_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "block_design_top_processing_system7_0_0,processing_system7_v5_5_processing_system7,{}" *) (* CORE_GENERATION_INFO = "block_design_top_processing_system7_0_0,processing_system7_v5_5_processing_system7,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=processing_system7,x_ipVersion=5.5,x_ipCoreRevision=6,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_EN_EMIO_PJTAG=0,C_EN_EMIO_ENET0=0,C_EN_EMIO_ENET1=0,C_EN_EMIO_TRACE=0,C_INCLUDE_TRACE_BUFFER=0,C_TRACE_BUFFER_FIFO_SIZE=128,USE_TRACE_DATA_EDGE_DETECTOR=0,C_TRACE_PIPELINE_WIDTH=8,C_TRACE_BUFFER_CLOCK_DELAY=12,C_EMIO_GPIO_WIDTH=52,C_INCLUDE_ACP_TRANS_CHECK=0,C_USE_DEFAULT_ACP_USER_VAL=0,C_S_AXI_ACP_ARUSER_VAL=31,C_S_AXI_ACP_AWUSER_VAL=31,C_M_AXI_GP0_ID_WIDTH=12,C_M_AXI_GP0_ENABLE_STATIC_REMAP=0,C_M_AXI_GP1_ID_WIDTH=12,C_M_AXI_GP1_ENABLE_STATIC_REMAP=0,C_S_AXI_GP0_ID_WIDTH=6,C_S_AXI_GP1_ID_WIDTH=6,C_S_AXI_ACP_ID_WIDTH=3,C_S_AXI_HP0_ID_WIDTH=6,C_S_AXI_HP0_DATA_WIDTH=64,C_S_AXI_HP1_ID_WIDTH=6,C_S_AXI_HP1_DATA_WIDTH=64,C_S_AXI_HP2_ID_WIDTH=6,C_S_AXI_HP2_DATA_WIDTH=64,C_S_AXI_HP3_ID_WIDTH=6,C_S_AXI_HP3_DATA_WIDTH=64,C_M_AXI_GP0_THREAD_ID_WIDTH=12,C_M_AXI_GP1_THREAD_ID_WIDTH=12,C_NUM_F2P_INTR_INPUTS=1,C_IRQ_F2P_MODE=DIRECT,C_DQ_WIDTH=32,C_DQS_WIDTH=4,C_DM_WIDTH=4,C_MIO_PRIMITIVE=54,C_TRACE_INTERNAL_WIDTH=2,C_USE_AXI_NONSECURE=0,C_USE_M_AXI_GP0=0,C_USE_M_AXI_GP1=0,C_USE_S_AXI_GP0=0,C_USE_S_AXI_GP1=0,C_USE_S_AXI_HP0=0,C_USE_S_AXI_HP1=0,C_USE_S_AXI_HP2=0,C_USE_S_AXI_HP3=0,C_USE_S_AXI_ACP=0,C_PS7_SI_REV=PRODUCTION,C_FCLK_CLK0_BUF=TRUE,C_FCLK_CLK1_BUF=FALSE,C_FCLK_CLK2_BUF=FALSE,C_FCLK_CLK3_BUF=FALSE,C_PACKAGE_NAME=clg400,C_GP0_EN_MODIFIABLE_TXN=1,C_GP1_EN_MODIFIABLE_TXN=1}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "processing_system7_v5_5_processing_system7,Vivado 2024.2" *) 
module block_design_top_processing_system7_0_0(GPIO_I, GPIO_O, GPIO_T, USB0_PORT_INDCTL, 
  USB0_VBUS_PWRSELECT, USB0_VBUS_PWRFAULT, FCLK_CLK0, FCLK_RESET0_N, MIO, DDR_CAS_n, DDR_CKE, 
  DDR_Clk_n, DDR_Clk, DDR_CS_n, DDR_DRSTB, DDR_ODT, DDR_RAS_n, DDR_WEB, DDR_BankAddr, DDR_Addr, 
  DDR_VRN, DDR_VRP, DDR_DM, DDR_DQ, DDR_DQS_n, DDR_DQS, PS_SRSTB, PS_CLK, PS_PORB)
/* synthesis syn_black_box black_box_pad_pin="GPIO_I[51:0],GPIO_O[51:0],GPIO_T[51:0],USB0_PORT_INDCTL[1:0],USB0_VBUS_PWRSELECT,USB0_VBUS_PWRFAULT,FCLK_RESET0_N,MIO[53:0],DDR_CAS_n,DDR_CKE,DDR_Clk_n,DDR_Clk,DDR_CS_n,DDR_DRSTB,DDR_ODT,DDR_RAS_n,DDR_WEB,DDR_BankAddr[2:0],DDR_Addr[14:0],DDR_VRN,DDR_VRP,DDR_DM[3:0],DDR_DQ[31:0],DDR_DQS_n[3:0],DDR_DQS[3:0],PS_SRSTB,PS_CLK,PS_PORB" */
/* synthesis syn_force_seq_prim="FCLK_CLK0" */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0 TRI_I" *) (* X_INTERFACE_MODE = "master" *) input [51:0]GPIO_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0 TRI_O" *) output [51:0]GPIO_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0 TRI_T" *) output [51:0]GPIO_T;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:usbctrl:1.0 USBIND_0 PORT_INDCTL" *) (* X_INTERFACE_MODE = "master" *) output [1:0]USB0_PORT_INDCTL;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:usbctrl:1.0 USBIND_0 VBUS_PWRSELECT" *) output USB0_VBUS_PWRSELECT;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:usbctrl:1.0 USBIND_0 VBUS_PWRFAULT" *) input USB0_VBUS_PWRFAULT;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 FCLK_CLK0 CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FCLK_CLK0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN block_design_top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) output FCLK_CLK0 /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 FCLK_RESET0_N RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FCLK_RESET0_N, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output FCLK_RESET0_N;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout [53:0]MIO;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, CAN_DEBUG false, TIMEPERIOD_PS 1250, MEMORY_TYPE COMPONENTS, DATA_WIDTH 8, CS_ENABLED true, DATA_MASK_ENABLED true, SLOT Single, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME TDM, CAS_LATENCY 11, CAS_WRITE_LATENCY 11" *) inout DDR_CAS_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_CKE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_Clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_Clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_CS_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_DRSTB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_ODT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_RAS_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_WEB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_BankAddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) inout [14:0]DDR_Addr;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) inout DDR_VRN;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout DDR_VRP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_DM;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_DQ;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_DQS_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_DQS;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout PS_SRSTB;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout PS_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout PS_PORB;
endmodule
