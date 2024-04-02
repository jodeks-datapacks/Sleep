tag @s remove sleep.sleeping

execute as @s run function sleep:get_player_name

function sleep:remove_player_from_array with storage sleep:sleep player_name

title @a actionbar ""