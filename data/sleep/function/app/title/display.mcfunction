#> sleep:app/title/display.mcfunction
# Runs the title display

# player name actionbar
# check player names
execute if score &actionbar_display_selector sleep.config matches 0 as @a[scores={sleep.time_since_rest=0}, tag=!sleep.sleeping_tag_added_at_in_bed] run function sleep:app/player_name/in_bed
execute if score &actionbar_display_selector sleep.config matches 0 as @a[scores={sleep.time_since_rest=1..}, tag=sleep.sleeping_tag_added_at_in_bed] run function sleep:app/player_name/out_bed
# set actionbar title
execute if score &actionbar_display_selector sleep.config matches 0 as @a[scores={sleep.time_since_rest=0}] if score &amount_of_sleeping_players sleep.players matches 1 run function sleep:app/title/player_name/one_player
execute if score &actionbar_display_selector sleep.config matches 0 as @a[scores={sleep.time_since_rest=0}] if score &amount_of_sleeping_players sleep.players matches 2 run function sleep:app/title/player_name/two_players
execute if score &actionbar_display_selector sleep.config matches 0 as @a[scores={sleep.time_since_rest=0}] if score &amount_of_sleeping_players sleep.players matches 3.. run function sleep:app/title/player_name/three_or_more_players


execute if score &actionbar_display_selector sleep.config matches 1 as @a[scores={sleep.time_since_rest=0}, tag=!sleep.sleeping_tag_added_at_in_bed] run function sleep:app/player_name/in_bed
execute if score &actionbar_display_selector sleep.config matches 1 as @a[scores={sleep.time_since_rest=1..}, tag=sleep.sleeping_tag_added_at_in_bed] run function sleep:app/player_name/out_bed
# selector actionbar
execute if score &actionbar_display_selector sleep.config matches 1 as @a[scores={sleep.time_since_rest=0}] run function sleep:app/title/selector/selector