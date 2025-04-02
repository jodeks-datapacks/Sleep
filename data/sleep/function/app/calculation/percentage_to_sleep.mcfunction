#> sleep/calculations/percentage_to_sleep
# Calculate the percentage of sleeping players needed

# Fixed values:
# &fixed_value_12000 sleep.time_values 12000
# &fixed_value_100 sleep.time_values 100
# &fixed_value_20 sleep.time_values 20
# &fixed_value_2 sleep.time_values 2

# Set percentage amount to amount of sleeping players
scoreboard players operation &temp_perc sleep.players_online = &playerNum sleep.players_online

# Anzahl der Spieler mal die Prozentzahl
scoreboard players operation &temp_perc sleep.players_online *= &percentage_to_sleep sleep.config

# Division durch 100
scoreboard players operation &temp_perc sleep.players_online /= &fixed_value_100 sleep.time_values

# Runden auf die nächste ganze Zahl
scoreboard players operation &remainder_perc sleep.players_online = &playerNum sleep.players_online
scoreboard players operation &remainder_perc sleep.players_online %= &fixed_value_100 sleep.time_values
execute if score &remainder_perc sleep.players_online matches 1.. run scoreboard players add &temp_perc sleep.players_online 1

# Save to &playerNum_percentage_to_sleep sleep.players_online
scoreboard players operation &playerNum_percentage_to_sleep sleep.players_online = &temp_perc sleep.players_online

execute if score &percentage_to_sleep sleep.config matches 0 run scoreboard players set &playerNum_percentage_to_sleep sleep.players_online 0