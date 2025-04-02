#> sleep:app/title/display.mcfunction
# Runs the title display

# player name actionbar
# check player names
execute as @a[scores={sleep.time_since_rest=0,sleep.actionbar_display_selector=0}, tag=!sleep.sleeping_tag_added_at_in_bed] run function sleep:app/player_name/in_bed
execute as @a[scores={sleep.time_since_rest=1..,sleep.actionbar_display_selector=0}, tag=sleep.sleeping_tag_added_at_in_bed] run function sleep:app/player_name/out_bed
# set actionbar title
execute as @a[scores={sleep.time_since_rest=0,sleep.actionbar_display_selector=0}] if score &amount_of_sleeping_players sleep.sleeping_players matches 1 run function sleep:app/title/player_name/one_player
execute as @a[scores={sleep.time_since_rest=0,sleep.actionbar_display_selector=0}] if score &amount_of_sleeping_players sleep.sleeping_players matches 2 run function sleep:app/title/player_name/two_players
execute as @a[scores={sleep.time_since_rest=0,sleep.actionbar_display_selector=0}] if score &amount_of_sleeping_players sleep.sleeping_players matches 3.. run function sleep:app/title/player_name/three_or_more_players

# selector actionbar
execute as @a[tag=sleeping,scores={sleep.actionbar_display_selector=1}] run function sleep:app/title/selector/selector

