#> sleep:app/time_control/time_accelerate

$time add $(time_add_rate)

# weather clear
$execute if predicate sleep:weather_check_thunder run execute as @a[scores={sleep.time_in_bed=$(time_until_skip_ticks)..}] run weather clear

$execute if predicate sleep:weather_check_raining run execute as @a[scores={sleep.time_in_bed=$(time_until_skip_ticks)..}] run weather clear