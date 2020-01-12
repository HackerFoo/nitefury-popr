set_part xc7a200tfbg484-3
set_property DEFAULT_LIB work [current_project]
set_property source_mgmt_mode All [current_project]

set src ../src

read_xdc $src/early.xdc

read_checkpoint static.dcp
read_checkpoint reconfigurable_module.dcp
set_property SCOPED_TO_CELLS {Top_i/tests_axi_lite_slave_0} [get_files reconfigurable_module.dcp]

link_design -mode default -reconfig_partitions {Top_i/tests_axi_lite_slave_0} -top Top_wrapper

read_xdc $src/normal.xdc
read_xdc $src/floorplanning.xdc

opt_design
place_design
phys_opt_design
route_design

write_checkpoint -force design.dcp
pr_verify static.dcp design.dcp
write_bitstream -force nf_popr.bit
