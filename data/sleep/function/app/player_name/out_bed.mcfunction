#> sleep:app/player_name/out_bed

tag @s remove sleep.sleeping_tag_added_at_in_bed

execute as @s at @s run function sleep:app/player_name/get_player_name

function sleep:app/player_name/remove_player_from_array with storage sleep:root player_name

function sleep:app/title/clear_title

execute store result score &amount_of_sleeping_players sleep.players if entity @a[tag=sleep.sleeping_tag_added_at_in_bed]

function sleep:app/calculation/percentage_to_sleep