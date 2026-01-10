#> sleep/calculation/skip_time
# Calculate the time to skip the night

# set base value
scoreboard players set &temp_night_end sleep.time_values 23459
scoreboard players set &temp_night_start sleep.time_values 12542

# If the current time (&daytime) is 12,000 or greater, calculate the remaining time until sunrise
execute if score &daytime sleep.time_values matches 12542..23459 run scoreboard players operation &skip_time sleep.time_values = &temp_night_end sleep.time_values
execute if score &daytime sleep.time_values matches 12542..23459 run scoreboard players operation &skip_time sleep.time_values -= &daytime sleep.time_values

execute if score &daytime sleep.time_values matches 0..12542 run scoreboard players operation &skip_time sleep.time_values = &temp_night_start sleep.time_values
execute if score &daytime sleep.time_values matches 0..12542 run scoreboard players operation &skip_time sleep.time_values -= &daytime sleep.time_values

execute store result storage sleep:root skip_time int 1 run scoreboard players get &skip_time sleep.time_values