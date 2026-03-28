#> sleep:uninstall.mcfunction

data remove storage sleep:image data
data remove storage sleep:root data

scoreboard objectives remove sleep.time_since_rest 
scoreboard objectives remove sleep.time_in_bed 
scoreboard objectives remove sleep.time_values 
scoreboard objectives remove sleep.players 
scoreboard objectives remove sleep.config 
scoreboard objectives remove sleep.players 
scoreboard objectives remove help.sleep 
scoreboard objectives remove sleep.check
scoreboard objectives remove sleep.actionbar_display_name
scoreboard objectives remove sleep.actionbar_display_selector
scoreboard objectives remove sleep.notification_chat
scoreboard objectives remove sleep.notification_sound

gamerule playersSleepingPercentage 100

say Successfully uninstalled Sleep!