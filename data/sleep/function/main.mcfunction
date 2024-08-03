# notifications
execute as @a unless score @s sleep_notification = @s sleep_notification run scoreboard players set @s sleep_notification 0
scoreboard players enable @a sleep_notification

schedule function sleep:timeofday 1t

execute if score &afk_players_sleep sleep.config matches 1 run function sleep:calc_online_players_afk

# How long does one player sleep
scoreboard players set @a[scores={sleep.time_since_rest=1..}] sleep.time_in_bed 0
execute if score &playerNum sleep.players_online < &amount_to_sleep sleep.config run scoreboard players add @a[scores={sleep.time_since_rest=0}] sleep.time_in_bed 1

# only count up time until night skip when everyone is in bed
execute if score &sleep_amount sleep.sleeping_players >= &amount_to_sleep sleep.config run scoreboard players add @a[scores={sleep.time_since_rest=0}] sleep.time_in_bed 1

# reset time when one goes out of bed
execute if score &playerNum sleep.players_online >= &amount_to_sleep sleep.config run execute if score &sleep_amount sleep.sleeping_players < &amount_to_sleep sleep.config run scoreboard players set @a[scores={sleep.time_since_rest=0}] sleep.time_in_bed 0

# How many players sleep
execute store result score &sleep_amount sleep.sleeping_players if entity @a[tag=sleeping]

# time skip
# check config + how many players sleep
execute if score &sleep_amount sleep.sleeping_players = &amount_to_sleep sleep.config run function sleep:time_control/time_control

# actionbar with message + with 1 more has to sleep if theres any
execute if entity @a[tag=sleeping] run function sleep:actionbar/main_actionbar

# check how many players --> if only 1 then skip when 1 sleeps
execute if score &afk_players_sleep sleep.config matches 0 run execute store result score &playerNum sleep.players_online run list
execute if score &playerNum sleep.players_online < &amount_to_sleep sleep.config if score &sleep_amount sleep.sleeping_players < &amount_to_sleep sleep.config run function sleep:time_control/time_control
execute as @a[scores={sleep.time_in_bed=1..}] run execute if score &playerNum sleep.players_online < &amount_to_sleep sleep.config if score &sleep_amount sleep.sleeping_players < &amount_to_sleep sleep.config run function sleep:actionbar/main_actionbar

# add + remove sleeping tag
tag @a remove sleeping
execute as @a at @s positioned ~ ~0.3 ~ unless entity @s[dx=0] run tag @s add sleeping


# config
# scoreboard players enable @a sleep.config
# execute as @a[scores={sleep.config=1..}] run function sleep:config/main_config




# kill phantoms of nearby players who did sleep - maybe include in next update



scoreboard players enable @a help.sleep

execute as @a if score @s help.sleep matches 1 run function sleep:trigger_help

