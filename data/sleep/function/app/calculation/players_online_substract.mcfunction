#> sleep/calculation/players_online
# Calculate the number of players online and substract the number of afk players


# Store the number of players online
execute store result score &playerNum sleep.players_online run list

# Score the number of players online with afk tag
execute if score &afk_players_sleep sleep.config matches 1 store result score &playerNumAFK sleep.players_online if entity @a[tag=afkannouncer.afk]

execute if score &afk_players_sleep sleep.config matches 1 run scoreboard players operation &playerNum sleep.players_online -= &playerNumAFK sleep.players_online