
execute if score @s sleep.actionbar_display_name matches 1 run data modify storage sleep:config actionbar_display_name_color set value green
execute if score @s sleep.actionbar_display_name matches 0 run data modify storage sleep:config actionbar_display_name_color set value red

execute if score @s sleep.actionbar_display_selector matches 1 run data modify storage sleep:config actionbar_display_selector_color set value green
execute if score @s sleep.actionbar_display_selector matches 0 run data modify storage sleep:config actionbar_display_selector_color set value red


execute if score @s sleep.notification_chat matches 1 run data modify storage sleep:config notification_chat_color set value green
execute if score @s sleep.notification_chat matches 0 run data modify storage sleep:config notification_chat_color set value red

execute if score @s sleep.notification_sound matches 1 run data modify storage sleep:config notification_sound_color set value green
execute if score @s sleep.notification_sound matches 0 run data modify storage sleep:config notification_sound_color set value red


function sleep:app/triggers/player_specific with storage sleep:config

scoreboard players set @a sleep.config 0