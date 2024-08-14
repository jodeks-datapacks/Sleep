execute as @a[scores={sleep.time_in_bed=100}] run function sleep:time_macro with storage sleep:time_macro

# weather clear
execute if predicate sleep:weather_check_thunder run execute as @a[scores={sleep.time_in_bed=100..}] run weather clear