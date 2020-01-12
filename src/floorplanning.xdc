create_pblock pblock_1
add_cells_to_pblock [get_pblocks pblock_1] [get_cells -quiet [list Top_i/tests_axi_lite_slave_0]]
resize_pblock [get_pblocks pblock_1] -add {SLICE_X88Y154:SLICE_X157Y197}
resize_pblock [get_pblocks pblock_1] -add {DSP48_X5Y62:DSP48_X8Y77}
resize_pblock [get_pblocks pblock_1] -add {RAMB18_X6Y62:RAMB18_X8Y77}
resize_pblock [get_pblocks pblock_1] -add {RAMB36_X6Y31:RAMB36_X8Y38}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_1]
set_property HD.RECONFIGURABLE true [get_cells Top_i/tests_axi_lite_slave_0]
