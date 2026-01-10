#> sleep:uninstall.mcfunction

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

data remove storage sleep:root time_add_rate
data remove storage sleep:root skip_time
data remove storage sleep:root players_sleeping
data remove storage sleep:root time_until_skip_ticks
data remove storage sleep:root player_name

data remove storage sleep:image current

gamerule players_sleeping_percentage 100

scoreboard players set &loaded sleep.check 0

say Successfully uninstalled Sleep!