#> sleep:app/time_control/time_control

execute if score &time_control sleep.config matches 0 run function sleep:app/time_control/time_skip with storage sleep:root data

execute if score &time_control sleep.config matches 1 if score &skipped sleep.check matches 0 run function sleep:app/time_control/time_accelerate with storage sleep:root data