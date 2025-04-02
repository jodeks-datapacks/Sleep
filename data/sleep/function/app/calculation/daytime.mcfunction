#> sleep/calculation/daytime
# Calculate the daytime

scoreboard players set &daytime sleep.time_values 0

execute store result score &daytime sleep.time_values run time query daytime

