#> sleep:app/time_control/time_accelerate

$execute if score &tick_accelerate sleep.config matches 0 run time add $(time_add_rate)

# weather clear
$execute if predicate sleep:weather_check_thunder run execute as @a[scores={sleep.time_in_bed=$(time_until_skip_ticks)}] run weather clear

$execute if predicate sleep:weather_check_raining run execute as @a[scores={sleep.time_in_bed=$(time_until_skip_ticks)}] run weather clear

execute if score &tick_accelerate sleep.config matches 1 if score &sleeping sleep.players matches 0 run function sleep:app/time_control/tick_acclerate

scoreboard players set &sleeping sleep.players 1

$execute as @a[scores={sleep.time_in_bed=$(time_until_skip_ticks)}] run scoreboard players set &skipped sleep.check 1