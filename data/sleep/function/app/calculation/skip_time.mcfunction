#> sleep/calculation/skip_time
# Calculate the time to skip the night

# set base value
scoreboard players set &temp_skip sleep.time_values 24000

# If the current time (&daytime) is 12,000 or greater, calculate the remaining time until sunrise
execute if score &daytime sleep.time_values matches 12000.. run scoreboard players operation &skip_time sleep.time_values = &temp_skip sleep.time_values
execute if score &daytime sleep.time_values matches 12000.. run scoreboard players operation &skip_time sleep.time_values -= &daytime sleep.time_values
execute if score &daytime sleep.time_values matches 12000.. run scoreboard players operation &skip_time sleep.time_values -= &fixed_value_500 sleep.time_values

# If the current time is less than 12,000 (daytime), set &skip_time to 0
execute if score &daytime sleep.time_values matches ..11999 run scoreboard players set &skip_time sleep.time_values 0

execute store result storage sleep:root skip_time int 1 run scoreboard players get &skip_time sleep.time_values