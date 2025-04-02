execute if score &afk_players_sleep sleep.config matches 0 run data modify storage sleep:config afk_players_sleep_check set value 2610
execute if score &afk_players_sleep sleep.config matches 1 run data modify storage sleep:config afk_players_sleep_check set value 2611

execute if score &afk_players_sleep sleep.config matches 0 run data modify storage sleep:config afk_players_sleep_check_color set value red
execute if score &afk_players_sleep sleep.config matches 1 run data modify storage sleep:config afk_players_sleep_check_color set value green

execute if score &percentage_mode sleep.config matches 0 run data modify storage sleep:config percentage_mode_check set value 2610
execute if score &percentage_mode sleep.config matches 1 run data modify storage sleep:config percentage_mode_check set value 2611

execute if score &percentage_mode sleep.config matches 0 run data modify storage sleep:config percentage_mode_check_color set value red
execute if score &percentage_mode sleep.config matches 1 run data modify storage sleep:config percentage_mode_check_color set value green

execute if score &time_control sleep.config matches 0 run data modify storage sleep:config time_control_check set value 2610
execute if score &time_control sleep.config matches 1 run data modify storage sleep:config time_control_check set value 2611

execute if score &time_control sleep.config matches 0 run data modify storage sleep:config time_control_check_color set value red
execute if score &time_control sleep.config matches 1 run data modify storage sleep:config time_control_check_color set value green

execute if score &heal_instant sleep.config matches 0 run data modify storage sleep:config heal_instant_color set value red
execute if score &heal_instant sleep.config matches 1 run data modify storage sleep:config heal_instant_color set value green

execute if score &heal_regeneration sleep.config matches 0 run data modify storage sleep:config heal_regeneration_color set value red
execute if score &heal_regeneration sleep.config matches 1 run data modify storage sleep:config heal_regeneration_color set value green