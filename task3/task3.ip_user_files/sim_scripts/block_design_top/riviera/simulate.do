transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+block_design_top  -L xil_defaultlib -L xilinx_vip -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L xlslice_v1_0_4 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.block_design_top xil_defaultlib.glbl

do {block_design_top.udo}

run 1000ns

endsim

quit -force
