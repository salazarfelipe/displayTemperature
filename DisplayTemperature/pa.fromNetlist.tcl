
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name DisplayTemperature -dir "/home/felipe/Documentos/UTP/Electronica2/DisplayTemperature/planAhead_run_1" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/felipe/Documentos/UTP/Electronica2/DisplayTemperature/DisplayTemperature.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/felipe/Documentos/UTP/Electronica2/DisplayTemperature} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "DisplayTemperature.ucf" [current_fileset -constrset]
add_files [list {DisplayTemperature.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
