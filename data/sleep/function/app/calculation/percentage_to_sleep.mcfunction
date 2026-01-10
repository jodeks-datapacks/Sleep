#> sleep/calculations/percentage_to_sleep
# Calculate the percentage of sleeping players needed

scoreboard players operation &temp_perc sleep.players = &playerNum sleep.players
scoreboard players operation &temp_perc sleep.players *= &percentage_to_sleep sleep.config
scoreboard players operation &temp_perc sleep.players /= &fixed_value_100 sleep.time_values

scoreboard players operation &remainder_perc sleep.players = &playerNum sleep.players
scoreboard players operation &remainder_perc sleep.players *= &percentage_to_sleep sleep.config
scoreboard players operation &remainder_perc sleep.players %= &fixed_value_100 sleep.time_values
execute if score &remainder_perc sleep.players matches 1.. run scoreboard players add &temp_perc sleep.players 1

scoreboard players operation &playerNum_percentage_to_sleep sleep.players = &temp_perc sleep.players

execute if score &percentage_to_sleep sleep.config matches 0 run scoreboard players set &playerNum_percentage_to_sleep sleep.players 0
execute if score &percentage_to_sleep sleep.config matches 100 run scoreboard players operation &playerNum_percentage_to_sleep sleep.players = &playerNum sleep.players