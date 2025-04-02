#> sleep:app/setup
# Called on load

# Initiate all scoreboard objectives
function sleep:app/scoreboard/add

# Set fixed values for some scoreboards
function sleep:app/scoreboard/set

# Set values for some storages
function sleep:app/storage/set

# Load the config values
function sleep:config/defaults

# Print the image
function sleep:config/image

# Set the playersSleepingPercentage gamerule to 101
# To disable the vanilla sleep system
# Without this the datapack will not work
gamerule playersSleepingPercentage 100
gamerule playersSleepingPercentage 101

# Initiate the main function
schedule function sleep:app/main 1t