execute if score &percentage_mode sleep.config matches 0 run data modify storage sleep:config percentage_mode_check set value 2610
execute if score &percentage_mode sleep.config matches 1 run data modify storage sleep:config percentage_mode_check set value 2611

execute if score &percentage_mode sleep.config matches 0 run data modify storage sleep:config percentage_mode_check_color set value red
execute if score &percentage_mode sleep.config matches 1 run data modify storage sleep:config percentage_mode_check_color set value green