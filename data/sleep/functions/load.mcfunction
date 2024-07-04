tellraw @a ["",{"text":"Sleep","color":"blue","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/sleep/"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/sleep/"}},{"text":" loaded - ","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/sleep/"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/sleep/"}},{"text":"[1.20.5]","color":"green","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/sleep/"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/sleep/"}},{"text":" ","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/sleep/"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/sleep/"}},{"text":"v.2.2.0","color":"dark_green","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/sleep/"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/sleep/"}}]

title @a times 0 0 0

scoreboard objectives add sleep.time_since_rest custom:time_since_rest

scoreboard objectives add sleep.time_in_bed dummy

scoreboard objectives add sleep.total_speeping dummy

scoreboard objectives add sleep.clock dummy

gamerule playersSleepingPercentage 101

scoreboard objectives add sleep.sleeping_players dummy

scoreboard objectives add sleep.players_online dummy

execute as @a unless score &amount_to_sleep sleep.config = &amount_to_sleep sleep.config run scoreboard players set &amount_to_sleep sleep.config 1
