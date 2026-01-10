#> sleep:app/main.mcfunction
# Execute each minecraft tick

# scoreboard players set &sleepanytimeyouwant sleep.check 0
# execute if function sleepanytimeyouwant:app/setup run scoreboard players set &sleepanytimeyouwant sleep.check 1

# Reset check scoreboard if new day begins
execute if score &daytime sleep.time_values matches 100..12000 run scoreboard players set &check_time_add_rate sleep.check 0

# Run calculations
# function sleep:app/calculation/amount_of_sleeping_players
function sleep:app/calculation/daytime
# function sleep:app/calculation/percentage_to_sleep
function sleep:app/calculation/player_time_in_bed
function sleep:app/calculation/players_online_substract
function sleep:app/calculation/skip_time
function sleep:app/calculation/time_until_skip_ticks

execute if score &tick_accelerate sleep.config matches 1 run function sleep:app/tick_sprint_stop

# Run notifications
function sleep:app/notification/send

# Display actionbar title
function sleep:app/title/display

# Execute function to heal players when they are in bed
execute if score &heal_regeneration sleep.config matches 1 as @a[scores={sleep.time_in_bed=1..}] run function sleep:app/heal_player/give_effect
execute if score &heal_instant sleep.config matches 1 as @a[scores={sleep.time_in_bed=1..}] run function sleep:app/heal_player/give_effect

# Inititate night skip
execute if score &amount_of_sleeping_players sleep.players matches 0 run scoreboard players set &skipped sleep.check 0
# Execute if percentage mode is disabled
execute if score &percentage_mode sleep.config matches 0 if score &amount_to_sleep sleep.config <= &playerNum sleep.players run scoreboard players operation &required_sleep_amount sleep.players = &amount_to_sleep sleep.config
execute if score &percentage_mode sleep.config matches 0 if score &amount_to_sleep sleep.config > &playerNum sleep.players run scoreboard players operation &required_sleep_amount sleep.players = &playerNum sleep.players
# Execute if percentage mode is enabled
execute if score &percentage_mode sleep.config matches 1 run scoreboard players operation &required_sleep_amount sleep.players = &playerNum_percentage_to_sleep sleep.players
# Inititate night skip
execute if score &amount_of_sleeping_players sleep.players matches 1.. if score &amount_of_sleeping_players sleep.players >= &required_sleep_amount sleep.players run function sleep:app/time_control/time_control

scoreboard players enable @a sleep.config
execute as @a if score @s sleep.config matches 1 run \
  function sleep:config/dialog_config with storage sleep:root
scoreboard players set @a sleep.config 0