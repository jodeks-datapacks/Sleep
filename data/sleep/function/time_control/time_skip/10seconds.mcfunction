execute as @a[scores={sleep.time_in_bed=200..}] run time set 0

# weather clear
execute if predicate sleep:weather_check_thunder run execute as @a[scores={sleep.time_in_bed=200..}] run weather clear