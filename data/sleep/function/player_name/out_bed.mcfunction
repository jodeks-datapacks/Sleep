tag @s remove sleep.sleeping_tag_added_at_in_bed

execute as @s run function sleep:player_name/get_player_name

function sleep:player_name/remove_player_from_array with storage sleep:sleep player_name

title @a actionbar ""

say out bed
