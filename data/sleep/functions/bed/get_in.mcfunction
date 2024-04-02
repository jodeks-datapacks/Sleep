execute as @s run function sleep:get_player_name

data modify storage sleep:sleep players_sleeping append from storage sleep:sleep player_name

tag @s add sleep.sleeping