execute if score @s sleep.actionbar_display_name matches 0 run function sleep:app/config/switch/actionbar_display_name/switch_to_1

execute unless score &check sleep.check matches 1 run scoreboard players set @s sleep.actionbar_display_name 0

execute unless score &check sleep.check matches 1 run scoreboard players set @s sleep.actionbar_display_selector 1

scoreboard players set &check sleep.check 0


function sleep:app/triggers/set_config_data with storage sleep:config