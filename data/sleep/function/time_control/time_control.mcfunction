scoreboard players set &time_add_rate sleep.clock 0

scoreboard players operation &skip_time_2 sleep.clock = &skip_time sleep.clock

scoreboard players operation &skip_time_2 sleep.clock /= &time_until_skip_ticks sleep.config


execute store result storage sleep:time_add_rate time_add_rate int 1 run scoreboard players get &skip_time_2 sleep.clock


execute if score &time_control sleep.config matches 0 run function sleep:time_control/time_skip with storage sleep:time_skip

execute if score &time_control sleep.config matches 1 run function sleep:time_control/time_accelerate with storage sleep:time_add_rate

