$execute as @a[scores={sleep.time_in_bed=$(time_until_skip_ticks)}] run function sleep:time_macro with storage sleep:skip_time_macro

# weather clear
$execute if predicate sleep:weather_check_thunder run execute as @a[scores={sleep.time_in_bed=$(time_until_skip_ticks)..}] run weather clear

