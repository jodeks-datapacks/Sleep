#> sleep:app/player_name/out_bed

tag @s remove sleep.sleeping_tag_added_at_in_bed

execute as @s run function sleep:app/player_name/get_player_name

function sleep:app/player_name/remove_player_from_array with storage sleep:root player_name

function sleep:app/title/clear_title


