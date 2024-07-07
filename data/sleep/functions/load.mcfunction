tellraw @a ["",{"text":"Sleep","color":"blue","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/sleep/"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/sleep/"}},{"text":" loaded - ","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/sleep/"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/sleep/"}},{"text":"[1.20.5-6]","color":"green","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/sleep/"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/sleep/"}},{"text":" ","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/sleep/"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/sleep/"}},{"text":"v.2.3.0","color":"dark_green","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/sleep/"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/sleep/"}}]

scoreboard objectives add sleep.time_since_rest custom:time_since_rest

scoreboard objectives add sleep.time_in_bed dummy

scoreboard objectives add sleep.total_speeping dummy

scoreboard objectives add sleep.clock dummy


# disable gamerule
gamerule playersSleepingPercentage 101


# track how many players sleep
scoreboard objectives add sleep.sleeping_players dummy

# track how many players are online
scoreboard objectives add sleep.players_online dummy



# config
# open config
scoreboard objectives add sleep.config dummy



# set default values for sleep.config


# time until skip
execute as @a unless score &time_until_skip sleep.config = &time_until_skip sleep.config run scoreboard players set &time_until_skip sleep.config 2

# amount of players need to sleep
execute as @a unless score &amount_to_sleep sleep.config = &amount_to_sleep sleep.config run scoreboard players set &amount_to_sleep sleep.config 1

# time skip or accelerated
execute as @a unless score &time_control sleep.config = &time_control sleep.config run scoreboard players set &time_control sleep.config 0

# setting to disable phantoms
# execute as @a unless score &phantoms_spawning sleep.config = &phantoms_spawning sleep.config run scoreboard players set &phantoms_spawning sleep.config 0
# This is WIP 


# maybe setting if time to skip night should reset or not when one players gets out of bed

# setting to get command feedback

# skip night??? 

# notification settings
scoreboard objectives add sleep_notification trigger

scoreboard objectives add help.sleep trigger

