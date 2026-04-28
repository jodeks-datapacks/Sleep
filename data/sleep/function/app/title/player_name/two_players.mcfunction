#> sleep:app/title/player_name/two_players.mcfunction

title @a actionbar \
  [\
    {"nbt":"data.players_sleeping[0].name",\
     "storage":"sleep:root",\
      "color": "yellow"},\
    {"text":" and ","color":"white"},\
    {"nbt":"data.players_sleeping[1].name",\
      "storage":"sleep:root",\
        "color": "yellow"},\
    {"text":" are sleeping - ",\
      "color":"white"},\
    {"score": {\
        "name":"&amount_of_sleeping_players",\
        "objective":"sleep.players"\
      }\
    },\
    "/",\
    {"score":{\
        "name":"&required_sleep_amount",\
        "objective":"sleep.players"\
      }\
    }\
]