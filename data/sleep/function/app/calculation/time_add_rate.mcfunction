
# Calculate the rate at which time is added
execute unless score &check_time_add_rate sleep.check matches 1 run scoreboard players operation &time_add_rate sleep.time_values = &skip_time sleep.time_values
execute unless score &check_time_add_rate sleep.check matches 1 run scoreboard players operation &time_add_rate sleep.time_values /= &time_until_skip_ticks sleep.config

execute unless score &check_time_add_rate sleep.check matches 1 store result storage sleep:root time_add_rate int 1 run scoreboard players get &time_add_rate sleep.time_values


scoreboard players set &check_time_add_rate sleep.check 1