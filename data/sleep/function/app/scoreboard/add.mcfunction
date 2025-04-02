#> sleep:app/scoreboard/add
# Initiate all scoreboard objectives

# Time since the player last slept
scoreboard objectives add sleep.time_since_rest custom:time_since_rest

# Time a player has been in bed
scoreboard objectives add sleep.time_in_bed dummy

# Time related values
# such as daytime and time to skip
# look in sleep/scoreboard/update_scoreboards for more
scoreboard objectives add sleep.time_values dummy

# Total number of players in sleeping / in bed
scoreboard objectives add sleep.sleeping_players dummy

# Config values
scoreboard objectives add sleep.config trigger

scoreboard objectives add sleep.actionbar_display_name dummy
scoreboard objectives add sleep.actionbar_display_selector dummy

scoreboard objectives add sleep.notification_chat dummy
scoreboard objectives add sleep.notification_sound dummy

# Number of players online
scoreboard objectives add sleep.players_online dummy


# Trigger scoreboard for the help command
scoreboard objectives add help.sleep trigger


# For image at reload
scoreboard objectives add sleep.image dummy

# For config checks
scoreboard objectives add sleep.check dummy

# For operator check
scoreboard objectives add operator.check dummy