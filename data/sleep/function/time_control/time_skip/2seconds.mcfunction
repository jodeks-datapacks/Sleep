execute as @a[scores={sleep.time_in_bed=20}] run time add 11000

# weather clear
execute if predicate sleep:weather_check_thunder run execute as @a[scores={sleep.time_in_bed=20..}] run weather clear