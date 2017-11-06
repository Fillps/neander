
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name neander -dir "D:/Documents/Google Drive/Eng Comp/UFGRS/INF/sistemas digitais/neander/planAhead_run_2" -part xc3s100ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Documents/Google Drive/Eng Comp/UFGRS/INF/sistemas digitais/neander/neander.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Documents/Google Drive/Eng Comp/UFGRS/INF/sistemas digitais/neander} {ipcore_dir} }
add_files [list {ipcore_dir/bram.ncf}] -fileset [get_property constrset [current_run]]
set_param project.pinAheadLayout  yes
set_property target_constrs_file "neander.ucf" [current_fileset -constrset]
add_files [list {neander.ucf}] -fileset [get_property constrset [current_run]]
link_design
