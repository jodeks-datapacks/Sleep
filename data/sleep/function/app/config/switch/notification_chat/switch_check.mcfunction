execute if score @s sleep.notification_chat matches 0 run function sleep:app/config/switch/notification_chat/switch_to_1

execute unless score &check sleep.check matches 1 run scoreboard players set @s sleep.notification_chat 0

scoreboard players set &check sleep.check 0


function sleep:app/triggers/set_config_data with storage sleep:config