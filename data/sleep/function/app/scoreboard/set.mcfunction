#> sleep:app/scoreboard/set
# Set scoreboard values

# dummy time related values
scoreboard players set &skip_time sleep.time_values 12000
scoreboard players set &fixed_value_12000 sleep.time_values 12000
scoreboard players set &fixed_value_500 sleep.time_values 500
scoreboard players set &fixed_value_100 sleep.time_values 100
scoreboard players set &fixed_value_20 sleep.time_values 20
scoreboard players set &fixed_value_3 sleep.time_values 3
scoreboard players set &fixed_value_2 sleep.time_values 2


scoreboard players set @a sleep.config 0 


# Check for operator status
  execute as @a store success score @s operator.check run random reset 1 1