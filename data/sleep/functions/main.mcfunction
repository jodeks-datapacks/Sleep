execute as @a unless score @s sleep_notification = @s sleep_notification run scoreboard players set @s sleep_notification 0
scoreboard players enable @a sleep_notification

execute as @a unless score @s night_skip = @s night_skip run scoreboard players set @a night_skip 0
scoreboard players enable @a night_skip

# How long does one player sleep
scoreboard players set @a[scores={sleep.time_since_rest=1..}] sleep.time_in_bed 0
scoreboard players add @a[scores={sleep.time_since_rest=0}] sleep.time_in_bed 1

# How many players sleep
execute store result score $global sleep.total_speeping run data get storage sleep:sleep players_sleeping

execute if score $global sleep.total_speeping matches 1 run function sleep:titles/one_player_sleeping
execute if score $global sleep.total_speeping matches 2 run function sleep:titles/two_players_sleeping
execute if score $global sleep.total_speeping matches 3.. run function sleep:titles/thee_or_more_sleeping

# function execute with time_skip config
execute if score $nightskip night_skip matches 0 run function sleep:skip_night
execute if score $nightskip night_skip matches 1.. run function sleep:sprint_night

# weather clear
execute as @a[scores={sleep.time_in_bed=100..}] run weather clear

execute as @a[scores={sleep.time_in_bed=1..}, tag=!sleep.sleeping] run function sleep:bed/get_in
execute as @a[scores={sleep.time_in_bed=0}, tag=sleep.sleeping] run function sleep:bed/get_out

execute as @a[scores={sleep_notification=1..}] at @s if score $global sleep.total_speeping matches 0 run function sleep:timeofday




