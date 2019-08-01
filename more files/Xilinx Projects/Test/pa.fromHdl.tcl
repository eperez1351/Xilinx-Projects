
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Test -dir "/home/erid/Documents/Xilinx Projects/Test/planAhead_run_1" -part xc3s500epq208-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "3S500E.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {gatetest.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top gatetest $srcset
add_files [list {3S500E.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500epq208-5
