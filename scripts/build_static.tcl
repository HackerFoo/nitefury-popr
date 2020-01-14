set_part xc7a200tfbg484-3
set_property DEFAULT_LIB work [current_project]
set_property source_mgmt_mode All [current_project]

set src ../src

read_verilog $src/tests_axi_lite_slave_top.v

# copy to the build dir to avoid polluting $src
file copy -force $src/Top.bd Top.bd
file copy -force $src/mig_a.prj mig_a.prj
read_bd Top.bd
set_property synth_checkpoint_mode None [get_files Top.bd]
generate_target all [get_files Top.bd]
open_bd_design Top.bd

read_verilog $src/Top_wrapper.v

read_xdc $src/early.xdc
set_property PROCESSING_ORDER EARLY [get_files $src/early.xdc]
read_xdc $src/normal.xdc
read_xdc $src/floorplanning.xdc

update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

synth_design -top Top_wrapper

opt_design
place_design
phys_opt_design
route_design

update_design -cell Top_i/tests_axi_lite_slave_0 -black_box
lock_design -level routing

write_checkpoint -force static.dcp
