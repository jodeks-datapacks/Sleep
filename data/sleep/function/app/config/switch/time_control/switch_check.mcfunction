execute if score &time_control sleep.config matches 0 run function sleep:app/config/switch/time_control/switch_to_1

execute unless score &check sleep.check matches 1 run scoreboard players set &time_control sleep.config 0

scoreboard players set &check sleep.check 0

# Update value
function sleep:app/config/time_control

function sleep:app/triggers/check with storage sleep:config