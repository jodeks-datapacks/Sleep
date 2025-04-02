$tellraw @s \
[\
  "\n",\
  {\
    "text":"Sleep Config",\
    "bold":true\
  },\
  "\n\n",\
  {\
    "text":"\u$(percentage_mode_check)",\
    "color":"$(percentage_mode_check_color)",\
    "clickEvent":{\
      "action":"run_command",\
      "value":"/execute as @s[scores={operator.check=1}] run function sleep:app/config/switch/percentage_mode/switch_check"\
    }\
  },\
  " Percentage mode \n",\
  {\
    "text":"enabling this will use the percentage of players that have to sleep instead of the amount",\
    "color":"gray"\
  },\
  "\n\nAmount of players that have to sleep: ",\
  {\
    "text":"+",\
    "clickEvent":{\
      "action":"run_command",\
      "value":"/execute as @s[scores={operator.check=1}] run function sleep:app/config/amount_to_sleep/increase"\
    }\
  },\
  " ",\
  {\
    "score":{\
      "objective":"sleep.config",\
      "name":"&amount_to_sleep"\
    }\
  },\
  " ",\
  {\
    "text":"-",\
    "clickEvent":{\
      "action":"run_command",\
      "value":"/execute as @s[scores={operator.check=1}] run function sleep:app/config/amount_to_sleep/decrease"\
    }\
  },\
  "\n\n",\
  {\
    "text":"\u$(time_control_check)",\
    "color":"$(time_control_check_color)",\
    "clickEvent":{\
      "action":"run_command",\
      "value":"/execute as @s[scores={operator.check=1}] run function sleep:app/config/switch/time_control/switch_check"\
    }\
  },\
  " Time warp \n",\
  {\
    "text":"enabling this will use time warp instead of instant night skip",\
    "color":"gray"\
  },\
  "\n\nTime until the night skips: ",\
  {\
    "text":"+",\
    "clickEvent":{\
      "action":"run_command",\
      "value":"/execute as @s[scores={operator.check=1}] run function sleep:app/config/time_until_skip/increase"\
    }\
  },\
  " ",\
  {\
    "score":{\
      "objective":"sleep.config",\
      "name":"&time_until_skip"\
    }\
  },\
  " ",\
  {\
    "text":"-",\
    "clickEvent":{\
      "action":"run_command",\
      "value":"/execute as @s[scores={operator.check=1}] run function sleep:app/config/time_until_skip/decrease"\
    }\
  },\
  "\n\n",\
  {\
    "text":"\u$(afk_players_sleep_check)",\
    "color":"$(afk_players_sleep_check_color)",\
    "clickEvent":{\
      "action":"run_command",\
      "value":"/execute as @s[scores={operator.check=1}] run function sleep:app/config/switch/afk_players_sleep/switch_check"\
    }\
  },\
  " AFK players don't need to sleep\n",\
  {\
    "text":"if turned on, afk players are included in the count of online players",\
    "color":"gray"\
  },\
  "\n\n",\
  "Heal when sleeping \n",\
  {\
    "text":"[Regeneration]",\
    "color":"$(heal_regeneration_color)",\
    "clickEvent":{\
      "action":"run_command",\
      "value":"/execute as @s[scores={operator.check=1}] run function sleep:app/config/switch/heal_regeneration/switch_check"\
    }\
  },\
  {\
    "text":" [Instant Health]",\
    "color":"$(heal_instant_color)",\
    "clickEvent":{\
      "action":"run_command",\
      "value":"/execute as @s[scores={operator.check=1}] run function sleep:app/config/switch/heal_instant/switch_check"\
    }\
  },\
  "\n\n\n",\
  {\
    "text":"[Player specific settings]",\
    "color":"white",\
    "clickEvent":{\
      "action":"run_command",\
      "value":"/function sleep:app/triggers/set_config_data"\
    }\
  }\
]