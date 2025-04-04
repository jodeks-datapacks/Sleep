
# clear options
data remove storage config_system:temp options
data modify storage config_system:temp options set value []

# Get current page 
scoreboard players operation #current_page chat_config.sleep = #current_page chat_config.sleep

# recursive filter options
function sleep:chat_config/process/filter_options_recursive