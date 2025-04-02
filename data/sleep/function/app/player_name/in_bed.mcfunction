#> sleep:app/player_name/in_bed

execute as @s run function sleep:app/player_name/get_player_name

data modify storage sleep:root players_sleeping append from storage sleep:root player_name

tag @s add sleep.sleeping_tag_added_at_in_bed

function sleep:app/calculation/time_add_rate