execute if score @s sleep.actionbar_display_selector matches 0 run function sleep:app/config/switch/actionbar_display_selector/switch_to_1

execute unless score &check sleep.check matches 1 run scoreboard players set @s sleep.actionbar_display_selector 0

execute unless score &check sleep.check matches 1 run scoreboard players set @s sleep.actionbar_display_name 1

scoreboard players set &check sleep.check 0


function sleep:app/triggers/set_config_data with storage sleep:config