
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name vga_3 -dir "/home/ise/VM/vga_3/planAhead_run_3" -part xc6slx9tqg144-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "vga.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {../vga_from_dee.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top GAME $srcset
add_files [list {vga.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx9tqg144-3
