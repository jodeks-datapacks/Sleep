execute if score &heal_instant sleep.config matches 0 run function sleep:app/config/switch/heal_instant/switch_to_1

execute unless score &check sleep.check matches 1 run scoreboard players set &heal_instant sleep.config 0

execute unless score &check sleep.check matches 1 run scoreboard players set &heal_regeneration sleep.config 0

scoreboard players set &check sleep.check 0

# Update value
function sleep:app/config/heal_instant

function sleep:app/triggers/check with storage sleep:config