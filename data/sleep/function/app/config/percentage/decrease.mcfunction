scoreboard players remove &percentage_to_sleep sleep.config 1

execute if score &percentage_to_sleep sleep.config matches ..0 run scoreboard players set &percentage_to_sleep sleep.config 0

function sleep:app/triggers/check with storage sleep:config