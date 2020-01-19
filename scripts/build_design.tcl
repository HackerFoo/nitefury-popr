source ../scripts/setup.tcl

# read and assign checkpoints
read_checkpoint static.dcp
read_checkpoint reconfigurable_module.dcp
set_property SCOPED_TO_CELLS {Top_i/tests_axi_lite_slave_0} [get_files reconfigurable_module.dcp]

# link them
link_design -mode default -reconfig_partitions {Top_i/tests_axi_lite_slave_0} -top Top_wrapper

# implement design
opt_design
place_design
phys_opt_design
route_design

# save results and verify
write_checkpoint -force design.dcp
pr_verify static.dcp design.dcp
write_bitstream -force nf_popr.bit
