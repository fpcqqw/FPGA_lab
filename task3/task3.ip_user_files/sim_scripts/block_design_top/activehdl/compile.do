transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_19
vlib activehdl/processing_system7_vip_v1_0_21
vlib activehdl/xil_defaultlib
vlib activehdl/xlslice_v1_0_4

vmap xilinx_vip activehdl/xilinx_vip
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 activehdl/axi_vip_v1_1_19
vmap processing_system7_vip_v1_0_21 activehdl/processing_system7_vip_v1_0_21
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlslice_v1_0_4 activehdl/xlslice_v1_0_4

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlslice_v1_0_4 \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/ec67/hdl" "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/86fe/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlslice_v1_0_4 \
"../../../../task3.gen/sources_1/bd/block_design_top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -sv2k12 "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/ec67/hdl" "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/86fe/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlslice_v1_0_4 \
"../../../../task3.gen/sources_1/bd/block_design_top/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_21  -sv2k12 "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/ec67/hdl" "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/86fe/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlslice_v1_0_4 \
"../../../../task3.gen/sources_1/bd/block_design_top/ipshared/86fe/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/ec67/hdl" "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/86fe/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlslice_v1_0_4 \
"../../../bd/block_design_top/ip/block_design_top_processing_system7_0_0_3/sim/block_design_top_processing_system7_0_0.v" \

vlog -work xlslice_v1_0_4  -v2k5 "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/ec67/hdl" "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/86fe/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlslice_v1_0_4 \
"../../../../task3.gen/sources_1/bd/block_design_top/ipshared/a97c/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/ec67/hdl" "+incdir+../../../../task3.gen/sources_1/bd/block_design_top/ipshared/86fe/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlslice_v1_0_4 \
"../../../bd/block_design_top/ip/block_design_top_xlslice_0_0_1/sim/block_design_top_xlslice_0_0.v" \
"../../../bd/block_design_top/ip/block_design_top_xlslice_0_1/sim/block_design_top_xlslice_0_1.v" \
"../../../bd/block_design_top/ip/block_design_top_xlslice_0_2/sim/block_design_top_xlslice_0_2.v" \
"../../../bd/block_design_top/ip/block_design_top_xlslice_1_0/sim/block_design_top_xlslice_1_0.v" \
"../../../bd/block_design_top/ip/block_design_top_xlslice_2_0/sim/block_design_top_xlslice_2_0.v" \
"../../../bd/block_design_top/ip/block_design_top_xlslice_0_3/sim/block_design_top_xlslice_0_3.v" \
"../../../bd/block_design_top/sim/block_design_top.v" \

vlog -work xil_defaultlib \
"glbl.v"

