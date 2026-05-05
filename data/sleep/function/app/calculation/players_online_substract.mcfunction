#> sleep/calculation/players_online
# Calculate the number of players online and substract the number of afk players


# Store the number of players online
execute store result score &playerNum sleep.players run list

# Score the number of players online with afk tag
execute if score &afk_players_sleep sleep.config matches 1 store result score &playerNumAFK sleep.players if entity @a[tag=afk_announcer.afk]

execute if score &afk_players_sleep sleep.config matches 1 run scoreboard players operation &playerNum sleep.players -= &playerNumAFK sleep.players


execute if score &dimension_sleep sleep.config matches 1 store result score &playerNumNether sleep.players if entity @a[tag=!afk_announcer.afk,nbt={Dimension:"minecraft:the_nether"}]

execute if score &dimension_sleep sleep.config matches 1 store result score &playerNumEnd sleep.players if entity @a[tag=!afk_announcer.afk,nbt={Dimension:"minecraft:the_end"}]

execute if score &dimension_sleep sleep.config matches 1 run scoreboard players operation &playerNum sleep.players -= &playerNumNether sleep.players

execute if score &dimension_sleep sleep.config matches 1 run scoreboard players operation &playerNum sleep.players -= &playerNumEnd sleep.players