execute if score &time_control sleep.config matches 0 run data modify storage sleep:config time_control_check set value 2610
execute if score &time_control sleep.config matches 1 run data modify storage sleep:config time_control_check set value 2611

execute if score &time_control sleep.config matches 0 run data modify storage sleep:config time_control_check_color set value red
execute if score &time_control sleep.config matches 1 run data modify storage sleep:config time_control_check_color set value green