#> sleep:app/setup
# Called on load

# Set the playersSleepingPercentage gamerule to 101
# To disable the vanilla sleep system
# Without this the datapack will not work
gamerule playersSleepingPercentage 101

# Initiate all scoreboard objectives
function sleep:app/scoreboard/add
function sleep:app/scoreboard/add

# Set fixed values for some scoreboards
function sleep:app/scoreboard/set

# Load the config values
function sleep:config/defaults

# Print the image
function sleep:config/image

# Init chat config
function sleep:chat_config/init

