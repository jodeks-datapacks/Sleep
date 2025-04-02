execute if score @s sleep.notification_sound matches 0 run function sleep:app/config/switch/notification_sound/switch_to_1

execute unless score &check sleep.check matches 1 run scoreboard players set @s sleep.notification_sound 0

scoreboard players set &check sleep.check 0


function sleep:app/triggers/set_config_data with storage sleep:config