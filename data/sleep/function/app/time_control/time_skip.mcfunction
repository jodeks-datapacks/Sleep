#> sleep:app/time_control/time_skip

$execute if score &daytime sleep.time_values matches 12542..23459 as @a[scores={sleep.time_in_bed=$(time_until_skip_ticks)}] run time add $(skip_time)

$execute if score &daytime sleep.time_values matches 0..12542 as @a[scores={sleep.time_in_bed=$(time_until_skip_ticks)}] run time add $(skip_time)

# weather clear
$execute if predicate sleep:weather_check_thunder run execute as @a[scores={sleep.time_in_bed=$(time_until_skip_ticks)}] run weather clear

$execute if predicate sleep:weather_check_raining run execute as @a[scores={sleep.time_in_bed=$(time_until_skip_ticks)}] run weather clear