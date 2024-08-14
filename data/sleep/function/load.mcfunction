tellraw @a ["",{"text":"Sleep","color":"blue","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/sleep/"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/sleep/"}},{"text":" loaded - ","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/sleep/"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/sleep/"}},{"text":"[1.21]","color":"green","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/sleep/"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/sleep/"}},{"text":" ","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/sleep/"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/sleep/"}},{"text":"v.2.7.2","color":"dark_green","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/sleep/"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/sleep/"}}]

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
execute as @a unless score &time_until_skip sleep.config = &time_until_skip sleep.config run scoreboard players set &time_until_skip sleep.config 5

# amount of players need to sleep
execute as @a unless score &amount_to_sleep sleep.config = &amount_to_sleep sleep.config run scoreboard players set &amount_to_sleep sleep.config 1

# time skip or accelerated
execute as @a unless score &time_control sleep.config = &time_control sleep.config run scoreboard players set &time_control sleep.config 0

# afk players are included in online players or not
execute as @a unless score &afk_players_sleep sleep.config = &afk_players_sleep sleep.config run scoreboard players set &afk_players_sleep sleep.config 0

# percentage mode on = 1, percentage mod off = 0
execute as @a unless score &percentage_mode sleep.config = &percentage_mode sleep.config run scoreboard players set &percentage_mode sleep.config 0

execute as @a unless score &percentage_to_sleep sleep.config = &percentage_to_sleep sleep.config run scoreboard players set &percentage_to_sleep sleep.config 50

# setting for actionbar name display - 0 = off - 1 = player head get name - 2 = @s selector
execute as @a unless score &actionbar_display sleep.config = &actionbar_display sleep.config run scoreboard players set &actionbar_display sleep.config 1

# notification settings
scoreboard objectives add sleep_notification trigger

scoreboard objectives add help.sleep trigger

# dummy value that is the same every time
scoreboard players set &skip_time sleep.clock 12000

scoreboard players set &fixed_value_12000 sleep.clock 12000
scoreboard players set &fixed_value_100 sleep.clock 100
scoreboard players set &fixed_value_20 sleep.clock 20
scoreboard players set &fixed_value_2 sleep.clock 2


