execute if score &percentage_mode sleep.config matches 0 run function sleep:app/config/switch/percentage_mode/switch_to_1

execute unless score &check sleep.check matches 1 run scoreboard players set &percentage_mode sleep.config 0

scoreboard players set &check sleep.check 0

# Update value
function sleep:app/config/percentage_mode

function sleep:app/triggers/check with storage sleep:config