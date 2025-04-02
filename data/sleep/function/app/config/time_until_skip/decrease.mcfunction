scoreboard players remove &time_until_skip sleep.config 1

execute if score &time_until_skip sleep.config matches ..0 run scoreboard players set &time_until_skip sleep.config 0

# Calculate the number of ticks until the time is skipped
scoreboard players operation &time_until_skip_ticks sleep.config = &time_until_skip sleep.config
scoreboard players operation &time_until_skip_ticks sleep.config *= &fixed_value_20 sleep.time_values

execute store result storage sleep:root time_until_skip_ticks int 1 run scoreboard players get &time_until_skip_ticks sleep.config

function sleep:app/triggers/check with storage sleep:config