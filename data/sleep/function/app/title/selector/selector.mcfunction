title @a actionbar \
[\
  "Sleeping: ",\
  {"selector":\
  "@a[tag=sleep.sleeping_tag_added_at_in_bed]",\
  "color": "yellow"\
  },\
   " - ",\
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