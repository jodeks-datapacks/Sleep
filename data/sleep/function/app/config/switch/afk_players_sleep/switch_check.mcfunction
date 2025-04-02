execute if score &afk_players_sleep sleep.config matches 0 run function sleep:app/config/switch/afk_players_sleep/switch_to_1

execute unless score &check sleep.check matches 1 run scoreboard players set &afk_players_sleep sleep.config 0

scoreboard players set &check sleep.check 0

# Update value
function sleep:app/config/afk_players_sleep

function sleep:app/triggers/check with storage sleep:config