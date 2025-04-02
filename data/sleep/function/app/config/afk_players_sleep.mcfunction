execute if score &afk_players_sleep sleep.config matches 0 run data modify storage sleep:config afk_players_sleep_check set value 2610
execute if score &afk_players_sleep sleep.config matches 1 run data modify storage sleep:config afk_players_sleep_check set value 2611

execute if score &afk_players_sleep sleep.config matches 0 run data modify storage sleep:config afk_players_sleep_check_color set value red
execute if score &afk_players_sleep sleep.config matches 1 run data modify storage sleep:config afk_players_sleep_check_color set value green