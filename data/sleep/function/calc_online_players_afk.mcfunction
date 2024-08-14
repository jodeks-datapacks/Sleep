# get number of players online
execute store result score &playerNum sleep.players_online run list

# get number of players who have afk tag
execute store result score &playerNumAFK sleep.players_online if entity @a[tag=afkannouncer.afk]

scoreboard players operation &playerNum sleep.players_online -= &playerNumAFK sleep.players_online