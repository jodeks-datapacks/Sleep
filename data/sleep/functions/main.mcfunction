execute as @a unless score @s sleep_notification = @s sleep_notification run scoreboard players set @s sleep_notification 0
scoreboard players enable @a sleep_notification

# How long does one player sleep
scoreboard players set @a[scores={sleep.time_since_rest=1..}] sleep.time_in_bed 0
scoreboard players add @a[scores={sleep.time_since_rest=0}] sleep.time_in_bed 1

# How many players sleep
execute store result score $global sleep.total_speeping run data get storage sleep:sleep players_sleeping

execute if score $global sleep.total_speeping matches 1 run function sleep:titles/one_player_sleeping
execute if score $global sleep.total_speeping matches 2 run function sleep:titles/two_players_sleeping
execute if score $global sleep.total_speeping matches 3.. run function sleep:titles/thee_or_more_sleeping

execute as @a[scores={sleep.time_in_bed=1..}, tag=!sleep.sleeping] run function sleep:bed/get_in
execute as @a[scores={sleep.time_in_bed=0}, tag=sleep.sleeping] run function sleep:bed/get_out

execute as @a[scores={sleep.time_in_bed=100..}] run time set 0

execute as @a[scores={sleep_notification=1..}] if score $global sleep.total_speeping matches 0 run function sleep:timeofday


