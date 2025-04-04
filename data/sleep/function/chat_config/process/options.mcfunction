
# Check options to process
execute unless data storage config_system:sleep options[0] run return 0

# Process first option
data modify storage config_system:sleep current_option set from storage config_system:sleep options[0]

# run based on option type
execute if data storage config_system:sleep current_option{type:"toggle"} run function sleep:chat_config/process/append/toggle with storage config_system:sleep current_option
execute if data storage config_system:sleep current_option{type:"slider"} run function sleep:chat_config/process/append/slider with storage config_system:sleep current_option
execute if data storage config_system:sleep current_option{type:"button"} run function sleep:chat_config/process/append/button with storage config_system:sleep current_option
execute if data storage config_system:sleep current_option{type:"header"} run function sleep:chat_config/process/append/header with storage config_system:sleep current_option

# remove processed option
data remove storage config_system:sleep options[0]

# recursive call all options
function sleep:chat_config/process/options


