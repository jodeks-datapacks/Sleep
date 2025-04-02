
function sleep:app/calculation/percentage_to_sleep

execute if score &percentage_mode sleep.config matches 0 run function sleep:app/triggers/sleep.config_0 with storage sleep:config
execute if score &percentage_mode sleep.config matches 1 run function sleep:app/triggers/sleep.config_1 with storage sleep:config

scoreboard players set @a sleep.config 0