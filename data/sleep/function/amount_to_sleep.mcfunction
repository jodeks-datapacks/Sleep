# How long does one player sleep
scoreboard players set @a[scores={sleep.time_since_rest=1..}] sleep.time_in_bed 0
execute if score &playerNum sleep.players_online < &amount_to_sleep sleep.config run scoreboard players add @a[scores={sleep.time_since_rest=0}] sleep.time_in_bed 1

# only count up time until night skip when everyone is in bed
execute if score &sleep_amount sleep.sleeping_players >= &amount_to_sleep sleep.config run scoreboard players add @a[scores={sleep.time_since_rest=0}] sleep.time_in_bed 1

# reset time when one goes out of bed
execute if score &playerNum sleep.players_online >= &amount_to_sleep sleep.config run execute if score &sleep_amount sleep.sleeping_players < &amount_to_sleep sleep.config run scoreboard players set @a[scores={sleep.time_since_rest=0}] sleep.time_in_bed 0

# time skip
# check config + how many players sleep
execute if score &sleep_amount sleep.sleeping_players >= &amount_to_sleep sleep.config run function sleep:time_control/time_control

# check how many players --> if only 1 then skip when 1 sleeps
execute if score &afk_players_sleep sleep.config matches 0 run execute store result score &playerNum sleep.players_online run list
execute if score &playerNum sleep.players_online < &amount_to_sleep sleep.config if score &sleep_amount sleep.sleeping_players < &amount_to_sleep sleep.config run function sleep:time_control/time_control
execute if score &actionbar_display sleep.config matches 2 as @a[scores={sleep.time_in_bed=1..}] run execute if score &playerNum sleep.players_online < &amount_to_sleep sleep.config if score &sleep_amount sleep.sleeping_players < &amount_to_sleep sleep.config run function sleep:actionbar/main_actionbar