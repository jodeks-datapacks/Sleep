#> sleep:app/calculation/player_time_in_bed.mcfunction
# Calculate the time a player has been in bed

scoreboard players set @a[scores={sleep.time_since_rest=1..}] sleep.time_in_bed 0
execute if score &amount_of_sleeping_players sleep.sleeping_players matches 1.. run scoreboard players add @a[scores={sleep.time_since_rest=0}] sleep.time_in_bed 1