
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name DisplayTemperature -dir "/home/felipe/Documentos/UTP/Electronica2/DisplayTemperature/planAhead_run_2" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property top DisplayTemperature $srcset
set_property target_constrs_file "DisplayTemperature.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ModuloTX.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {DivFreq4ms.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {divFreq115200.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {DisplaySelector.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Convertor.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {BCD.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {DisplayTemperature.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
add_files [list {DisplayTemperature.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
