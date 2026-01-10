#> sleep:app/player_name/in_bed

execute as @s at @s run function sleep:app/player_name/get_player_name

data modify storage sleep:root players_sleeping append from storage sleep:root player_name

execute unless score &amount_of_sleeping_players sleep.players >= &required_sleep_amount sleep.players run function sleep:app/calculation/time_add_rate

tag @s add sleep.sleeping_tag_added_at_in_bed

execute store result score &amount_of_sleeping_players sleep.players if entity @a[tag=sleep.sleeping_tag_added_at_in_bed]

function sleep:app/calculation/percentage_to_sleep