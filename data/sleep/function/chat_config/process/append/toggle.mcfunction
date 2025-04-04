# Check if option is enabled
$execute store success score #is_enabled chat_config.sleep if score $(score_holder) $(scoreboard) matches 1..

# Add toggle indicator + name
$execute if score #is_enabled chat_config.sleep matches 1 run data modify storage config_system:sleep menu append value {text:"\u2611",color:"green",click_event:{action:"run_command",command:"/$(command_off)"}}
$execute if score #is_enabled chat_config.sleep matches 0 run data modify storage config_system:sleep menu append value {text:"\u2610",color:"red",click_event:{action:"run_command",command:"/$(command_on)"}}

$data modify storage config_system:sleep menu append value {text:" $(name)",color:"white"}

# Line break
function sleep:chat_config/process/append/handle/line_break

# Add description if there
execute if data storage config_system:sleep current_option.description run function sleep:chat_config/process/append/handle/description with storage config_system:sleep current_option

# Line break
function sleep:chat_config/process/append/handle/line_break