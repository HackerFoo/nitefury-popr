open_hw_manager
connect_hw_server -allow_non_jtag
open_hw_target
set_property PROGRAM.FILE {nf_popr_pblock_1_partial.bit} [get_hw_devices xc7a200t_0]
current_hw_device [get_hw_devices xc7a200t_0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices xc7a200t_0] 0]
#create_hw_cfgmem -hw_device [get_hw_devices xc7a200t_0] -mem_dev [lindex [get_cfgmem_parts {s25fl128sxxxxxx1-spi-x1_x2_x4}] 0]
program_hw_devices [get_hw_devices xc7a200t_0]
disconnect_hw_server localhost:3121
