source ../scripts/setup.tcl

# prevent accidental changes to static.dcp, because this will
# make partial bitstreams incompatible with an already
# programmed design
if [file exists static.dcp] {
    puts "won't overwrite static.dcp"
    exit 2
}

# copy to the build dir to avoid polluting $src
file copy -force $src/Top.bd Top.bd
file copy -force $src/mig_a.prj mig_a.prj

# used within the block design
read_verilog $src/tests_axi_lite_slave_top.v

# read the block design and generate
read_bd Top.bd
set_property synth_checkpoint_mode None [get_files Top.bd]
generate_target all [get_files Top.bd]

# make a wrapper for the block design
make_wrapper -files [get_files Top.bd] -top
read_verilog hdl/Top_wrapper.v

# constraints
read_xdc $src/early.xdc
set_property PROCESSING_ORDER EARLY [get_files $src/early.xdc]
read_xdc $src/normal.xdc
read_xdc $src/floorplanning.xdc

# implement design
synth_design -top Top_wrapper
opt_design
place_design
phys_opt_design
route_design

# lock the static design
update_design -cell Top_i/tests_axi_lite_slave_0 -black_box
lock_design -level routing

# save the result
write_checkpoint static.dcp
