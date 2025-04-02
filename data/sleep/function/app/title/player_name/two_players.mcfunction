#> sleep:app/title/player_name/two_players.mcfunction

title @a actionbar \
  [\
    {"nbt":"players_sleeping[0].name",\
     "storage":"sleep:root",\
      "color": "yellow"},\
    {"text":" and ","color":"white"},\
    {"nbt":"players_sleeping[1].name",\
      "storage":"sleep:root",\
        "color": "yellow"},\
    {"text":" are sleeping",\
      "color":"white"}\
  ]