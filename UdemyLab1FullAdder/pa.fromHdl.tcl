
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name UdemyLab1FullAdder -dir "/home/erid/Documents/Xilinx Projects/UdemyLab1FullAdder/planAhead_run_2" -part xc3s100evq100-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Full_Adder_2.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {../../../vhdl-and-fpga-development-for-beginners-and-intermediates/labfiles/Lab-1/Lab 1 Full Adder/BASYS 2/Full_Adder_2.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Full_Adder_2 $srcset
add_files [list {Full_Adder_2.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100evq100-5
