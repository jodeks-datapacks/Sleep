# notifications
execute as @a unless score @s sleep_notification = @s sleep_notification run scoreboard players set @s sleep_notification 0
scoreboard players enable @a sleep_notification



function sleep:timeofday

function sleep:sleep_notification

execute if score &afk_players_sleep sleep.config matches 1 run function sleep:calc_online_players_afk

# AMOUNT TO SLEEP
execute if score &percentage_mode sleep.config matches 0 run function sleep:amount_to_sleep

# PERCENTAGE TO SLEEP
execute if score &percentage_mode sleep.config matches 1 run function sleep:percentage_to_sleep

# How many players sleep
execute store result score &sleep_amount sleep.sleeping_players if entity @a[tag=sleeping]

# actionbar with message + with 1 more has to sleep if theres any
execute if score &actionbar_display sleep.config matches 2 if entity @a[tag=sleeping] run function sleep:actionbar/main_actionbar

# add + remove sleeping tag
tag @a remove sleeping
execute as @a at @s positioned ~ ~0.3 ~ unless entity @s[dx=0] run tag @s add sleeping

execute if score &actionbar_display sleep.config matches 1 as @a[scores={sleep.time_in_bed=1..}, tag=!sleep.sleeping_tag_added_at_in_bed] run function sleep:player_name/in_bed

execute if score &actionbar_display sleep.config matches 1 as @a[scores={sleep.time_in_bed=0}, tag=sleep.sleeping_tag_added_at_in_bed] run function sleep:player_name/out_bed

# clear title
execute if entity @a[scores={sleep.time_in_bed=0}] unless score &daytime sleep.clock matches 1000..12542 run function sleep:clear_title


# heal player when in bed
execute if score &heal_when_sleeping sleep.config matches 1 as @a[scores={sleep.time_in_bed=1..}] run effect give @s regeneration 1 3 true

execute if score &heal_when_sleeping sleep.config matches 2 as @a[scores={sleep.time_in_bed=1..}] run effect give @s instant_health 1 50 true

# help scoreboard
scoreboard players enable @a help.sleep

execute as @a if score @s help.sleep matches 1 run function sleep:trigger_help

# calc time until skip
scoreboard players operation &time_until_skip_ticks sleep.config = &time_until_skip sleep.config

scoreboard players operation &time_until_skip_ticks sleep.config *= &fixed_value_20 sleep.clock

execute store result storage sleep:time_skip time_until_skip_ticks int 1 run scoreboard players get &time_until_skip_ticks sleep.config

# actionbar display
execute if score &actionbar_display sleep.config matches 1 if score &sleep_amount sleep.sleeping_players matches 1 run function sleep:actionbar/titles/one_player_sleeping
execute if score &actionbar_display sleep.config matches 1 if score &sleep_amount sleep.sleeping_players matches 2 run function sleep:actionbar/titles/two_players_sleeping
execute if score &actionbar_display sleep.config matches 1 if score &sleep_amount sleep.sleeping_players matches 3.. run function sleep:actionbar/titles/three_or_more_players_sleeping

