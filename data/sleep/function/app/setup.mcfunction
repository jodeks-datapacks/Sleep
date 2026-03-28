#> sleep:app/setup
# Called on load

scoreboard objectives add jodek.config dummy
execute unless score &sleep_load_message jodek.config = &sleep_load_message jodek.config run scoreboard players set &sleep_load_message jodek.config 1
execute unless score &sleep_advancements jodek.config = &sleep_advancements jodek.config run scoreboard players set &sleep_advancements jodek.config 1

# Set the playersSleepingPercentage gamerule to 101
# To disable the vanilla sleep system
# Without this the datapack will not work
function sleep:app/gamerule

# Add scoreboard objectives
  # Time since the player last slept
  scoreboard objectives add sleep.time_since_rest custom:time_since_rest
  # Time a player has been in bed
  scoreboard objectives add sleep.time_in_bed dummy
  # Time related values
  # such as daytime and time to skip
  # look in sleep/scoreboard/update_scoreboards for more
  scoreboard objectives add sleep.time_values dummy
  # Total number of players in sleeping / in bed
  scoreboard objectives add sleep.players dummy
  # Config values
  scoreboard objectives add sleep.config trigger
  scoreboard objectives add sleep.actionbar_display_name dummy
  scoreboard objectives add sleep.actionbar_display_selector dummy
  scoreboard objectives add sleep.notification_chat dummy
  scoreboard objectives add sleep.notification_sound dummy
  # Number of players online
  scoreboard objectives add sleep.players dummy
  # Trigger scoreboard for the help command
  scoreboard objectives add help.sleep trigger
  # For image at reload
  scoreboard objectives add sleep.image dummy
  # For config checks
  scoreboard objectives add sleep.check dummy
  # For operator check
  scoreboard objectives add operator.check dummy

# Set scoreboard values
  # dummy time related values
  scoreboard players set &skip_time sleep.time_values 12000
  scoreboard players set &fixed_value_12000 sleep.time_values 12000
  scoreboard players set &fixed_value_500 sleep.time_values 500
  scoreboard players set &fixed_value_100 sleep.time_values 100
  scoreboard players set &fixed_value_20 sleep.time_values 20
  scoreboard players set &fixed_value_3 sleep.time_values 3
  scoreboard players set &fixed_value_2 sleep.time_values 2

  scoreboard players set @a sleep.config 0 

  scoreboard players set &skipped sleep.check 0

# Print the image
function sleep:config/image

# Load the config values
function sleep:config/set_default

# Calculate the number of ticks until the time is skipped
scoreboard players operation &time_until_skip_ticks sleep.config = &time_until_skip sleep.config
scoreboard players operation &time_until_skip_ticks sleep.config *= &fixed_value_20 sleep.time_values

execute store result storage sleep:root data.time_until_skip_ticks int 1 run scoreboard players get &time_until_skip_ticks sleep.config