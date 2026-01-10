#> sleep:app/title/player_name/one_player.mcfunction

title @a actionbar \
  [\
    {"nbt":"players_sleeping[0].name",\
      "storage":"sleep:root",\
        "color": "yellow"},\
    {"text":" is sleeping - ",\
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