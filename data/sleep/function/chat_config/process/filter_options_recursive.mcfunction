
# check for options
execute unless data storage config_system:temp all_options[0] run return 0

# store current option
data modify storage config_system:temp current_filter_option set from storage config_system:temp all_options[0]

# check if option has page attribute
execute store success score #has_page_attr chat_config.sleep if data storage config_system:temp current_filter_option.page

# if option has page attribute, check if it matches current page
execute if score #has_page_attr chat_config.sleep matches 1 store result score #option_page chat_config.sleep run data get storage config_system:temp current_filter_option.page
execute if score #has_page_attr chat_config.sleep matches 1 if score #option_page chat_config.sleep = #current_page chat_config.sleep run data modify storage config_system:temp options append from storage config_system:temp all_options[0]

# Remove processed option + increase counter
data remove storage config_system:temp all_options[0]

# recursive call until return is 0
function sleep:chat_config/process/filter_options_recursive