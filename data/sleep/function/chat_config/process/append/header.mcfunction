# Add header
data modify storage config_system:temp menu append value {"text":"","color":"white"}
$data modify storage config_system:temp menu[-1].text set value "$(name)"

# Line break
function sleep:chat_config/process/append/handle/line_break

# Add description if there
execute if data storage config_system:temp current_option.description run function sleep:chat_config/process/append/handle/description with storage config_system:temp current_option

# Line break
function sleep:chat_config/process/append/handle/line_break


