
# Calculate the rate at which time is added
scoreboard players operation &time_add_rate sleep.time_values = &skip_time sleep.time_values
scoreboard players operation &time_add_rate sleep.time_values /= &time_until_skip_ticks sleep.config

execute store result storage sleep:root data.time_add_rate int 1 run scoreboard players get &time_add_rate sleep.time_values