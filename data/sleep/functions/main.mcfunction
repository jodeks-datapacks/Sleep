execute as @a unless score @s sleep_notification = @s sleep_notification run scoreboard players set @s sleep_notification 0
scoreboard players enable @a sleep_notification

execute as @a[scores={sleep_notification=1..}] at @s if score $global sleep.total_speeping matches 0 run function sleep:timeofday

scoreboard players set @a[scores={sleep.time_since_rest=1..}] sleep.time_in_bed 0
execute if score &playerNum sleep.players_online < &amount_to_sleep sleep.config run scoreboard players add @a[scores={sleep.time_since_rest=0}] sleep.time_in_bed 1

execute if score &sleep_amount sleep.sleeping_players >= &amount_to_sleep sleep.config run scoreboard players add @a[scores={sleep.time_since_rest=0}] sleep.time_in_bed 1

execute if score &playerNum sleep.players_online >= &amount_to_sleep sleep.config run execute if score &sleep_amount sleep.sleeping_players < &amount_to_sleep sleep.config run scoreboard players set @a[scores={sleep.time_since_rest=0}] sleep.time_in_bed 0

execute store result score $global sleep.total_speeping run data get storage sleep:sleep players_sleeping

execute store result score &sleep_amount sleep.sleeping_players if entity @a[tag=sleeping]

execute if score &sleep_amount sleep.sleeping_players = &amount_to_sleep sleep.config run function sleep:time_skip

execute if entity @a[tag=sleeping,limit=1] run function sleep:actionbar/main_actionbar

execute store result score &playerNum sleep.players_online run list
execute if score &playerNum sleep.players_online < &amount_to_sleep sleep.config if score &sleep_amount sleep.sleeping_players < &amount_to_sleep sleep.config run function sleep:time_skip
execute as @a[scores={sleep.time_in_bed=1..}] run execute if score &playerNum sleep.players_online < &amount_to_sleep sleep.config if score &sleep_amount sleep.sleeping_players < &amount_to_sleep sleep.config run function sleep:actionbar/main_actionbar

tag @a remove sleeping
execute as @a at @s positioned ~ ~0.3 ~ unless entity @s[dx=0] run tag @s add sleeping

scoreboard players enable @a sleep.config
execute as @a[scores={sleep.config=1..}] run function sleep:config/main_config





