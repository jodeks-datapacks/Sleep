#> sleep:app/title/player_name/one_player.mcfunction

title @a actionbar \
  [\
    {"nbt":"players_sleeping[0].name",\
      "storage":"sleep:root",\
        "color": "yellow"},\
    {"text":" is sleeping",\
      "color":"white"}\
  ]

