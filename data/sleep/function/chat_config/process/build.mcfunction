# init array
data remove storage config_system:sleep menu
data modify storage config_system:sleep menu set value []

# Add title
# Line break
function sleep:chat_config/process/append/handle/line_break

$data modify storage config_system:sleep menu append value {text:"$(title)",bold:true}

# Line break
function sleep:chat_config/process/append/handle/line_break
# Line break
function sleep:chat_config/process/append/handle/line_break

# Store options in sleep storage
$data modify storage config_system:sleep options set value $(options)

# pagination type + store data
data modify storage config_system:sleep pagination set from storage config_system:sleep options[-1]
data remove storage config_system:sleep options[-1]

# Get current page from selector
$execute store result score #current_page chat_config.sleep run scoreboard players get $(target) chat_config.sleep.page

# Ensure current page is at least 1
execute if score #current_page chat_config.sleep matches ..0 run scoreboard players set #current_page chat_config.sleep 1

# copy of all options
data modify storage config_system:sleep all_options set from storage config_system:sleep options

# Filter options for current page
function sleep:chat_config/process/filter_options

# Process options for current page
function sleep:chat_config/process/options

# Add pagination
function sleep:chat_config/process/pagination

# Display
$tellraw $(target) {nbt:"menu[]",storage:"config_system:sleep",interpret:true,separator:""}