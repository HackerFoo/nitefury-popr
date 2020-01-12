set_part xc7a200tfbg484-3
set_property DEFAULT_LIB work [current_project]
set_property source_mgmt_mode All [current_project]

set src ../src

read_verilog $src/tests_axi_lite_slave_top.v

synth_design -mode out_of_context -top tests_axi_lite_slave_top

write_checkpoint -force reconfigurable_module.dcp
