#> sleep:app/title/player_name/three_or_more_players.mcfunction

title @a actionbar \
  [\
    {"nbt":"players_sleeping[0].name",\
     "storage":"sleep:root", "color": "yellow"},\
    {"text":" and ","color":"white"},\
    {"score":{"name":"&amount_of_sleeping_players",\
      "objective":"sleep.sleeping_players"},\
        "color": "yellow"},\
    {"text":" more players are sleeping",\
      "color":"white"}\
  ]