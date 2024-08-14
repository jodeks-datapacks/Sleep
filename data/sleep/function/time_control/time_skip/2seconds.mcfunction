execute as @a[scores={sleep.time_in_bed=40}] run function sleep:time_macro with storage sleep:time_macro

# weather clear
execute if predicate sleep:weather_check_thunder run execute as @a[scores={sleep.time_in_bed=40..}] run weather clear