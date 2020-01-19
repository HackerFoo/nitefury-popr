source ../scripts/setup.tcl

# resynthesize and save the checkpoint
read_verilog $src/tests_axi_lite_slave_top.v
synth_design -mode out_of_context -top tests_axi_lite_slave_top
write_checkpoint -force reconfigurable_module.dcp
