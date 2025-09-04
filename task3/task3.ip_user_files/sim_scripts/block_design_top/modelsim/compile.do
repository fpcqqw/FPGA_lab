vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_19
vlib modelsim_lib/msim/processing_system7_vip_v1_0_21
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlslice_v1_0_4

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 modelsim_lib/msim/axi_vip_v1_1_19
vmap processing_system7_vip_v1_0_21 modelsim_lib/msim/processing_system7_vip_v1_0_21
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlslice_v1_0_4 modelsim_lib/msim/xlslice_v1_0_4

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/ec67/hdl" "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/86fe/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../task3.gen/sources_1/bd/block_design_top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/ec67/hdl" "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/86fe/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../task3.gen/sources_1/bd/block_design_top/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_21  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/ec67/hdl" "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/86fe/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../task3.gen/sources_1/bd/block_design_top/ipshared/86fe/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/ec67/hdl" "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/86fe/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/block_design_top/ip/block_design_top_processing_system7_0_0_3/sim/block_design_top_processing_system7_0_0.v" \

vlog -work xlslice_v1_0_4  -incr -mfcu  "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/ec67/hdl" "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/86fe/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../task3.gen/sources_1/bd/block_design_top/ipshared/a97c/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/ec67/hdl" "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/86fe/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/block_design_top/ip/block_design_top_xlslice_0_0_1/sim/block_design_top_xlslice_0_0.v" \
"../../../bd/block_design_top/ip/block_design_top_xlslice_0_1/sim/block_design_top_xlslice_0_1.v" \
"../../../bd/block_design_top/ip/block_design_top_xlslice_0_2/sim/block_design_top_xlslice_0_2.v" \
"../../../bd/block_design_top/ip/block_design_top_xlslice_1_0/sim/block_design_top_xlslice_1_0.v" \
"../../../bd/block_design_top/ip/block_design_top_xlslice_2_0/sim/block_design_top_xlslice_2_0.v" \
"../../../bd/block_design_top/ip/block_design_top_xlslice_0_3/sim/block_design_top_xlslice_0_3.v" \
"../../../bd/block_design_top/sim/block_design_top.v" \

vlog -work xil_defaultlib \
"glbl.v"

