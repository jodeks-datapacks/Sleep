#> sleep:app/main.mcfunction
# Execute each minecraft tick

# Reset check scoreboard if new day begins
execute if score &daytime sleep.time_values matches 100..12000 run scoreboard players set &check_time_add_rate sleep.check 0

# Run calculations
function sleep:app/calculation/amount_of_sleeping_players
function sleep:app/calculation/daytime
function sleep:app/calculation/percentage_to_sleep
function sleep:app/calculation/player_time_in_bed
function sleep:app/calculation/players_online_substract
function sleep:app/calculation/skip_time
execute as @a[scores={sleep.time_in_bed=1..}] run function sleep:app/calculation/time_add_rate

# Run notifications
function sleep:app/notification/enable
function sleep:app/notification/send

# Display actionbar title
function sleep:app/title/display

# Tag sleeping players
tag @a[tag=sleeping] remove sleeping
execute as @a at @s positioned ~ ~0.3 ~ unless entity @s[dx=0] run tag @s add sleeping

# Execute function to heal players when they are in bed
execute if score &heal_regeneration sleep.config matches 1 as @a[scores={sleep.time_in_bed=1..}] run function sleep:app/heal_player/give_effect
execute if score &heal_instant sleep.config matches 1 as @a[scores={sleep.time_in_bed=1..}] run function sleep:app/heal_player/give_effect

# Listen for help
scoreboard players enable @a help.sleep
execute as @a if score @s help.sleep matches 1 run function sleep:app/help/trigger_help

# Inititate night skip
# Execute if percentage mode is disabled
execute if score &percentage_mode sleep.config matches 0 if score &amount_to_sleep sleep.config <= &playerNum sleep.players_online run scoreboard players operation &required_sleep_amount sleep.players_online = &amount_to_sleep sleep.config
execute if score &percentage_mode sleep.config matches 0 if score &amount_to_sleep sleep.config > &playerNum sleep.players_online run scoreboard players operation &required_sleep_amount sleep.players_online = &playerNum sleep.players_online
# Execute if percentage mode is enabled
execute if score &percentage_mode sleep.config matches 1 run scoreboard players operation &required_sleep_amount sleep.players_online = &playerNum_percentage_to_sleep sleep.players_online
# Inititate night skip
execute if score &amount_of_sleeping_players sleep.sleeping_players matches 1.. if score &amount_of_sleeping_players sleep.sleeping_players >= &required_sleep_amount sleep.players_online run function sleep:app/time_control/time_control


scoreboard players enable @a sleep.config
execute as @a if score @s sleep.config matches 1 run \
 function sleep:config/chat_config