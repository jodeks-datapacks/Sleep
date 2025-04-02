tellraw @s \
[\
  "\n",\
  {\
  "text":"[HELP] ",\
    "color":"gray"\
  },\
  {\
  "text":"Sleep",\
    "bold":true,\
    "hoverEvent":\
    {\
    "action":"show_item",\
      "contents":\
        {\
        "id":"minecraft:red_bed"\
        }\
    }\
  },\
  "\n\nNotification when you can go to bed\n",\
  {\
    "text":"/trigger sleep_notification set value\n",\
      "clickEvent":\
      {\
        "action":"copy_to_clipboard",\
        "value":"/trigger sleep_notification set"\
      },\
      "hoverEvent":\
      {\
        "action":"show_text",\
        "contents":"click to copy"\
      },\
    "color":"yellow"\
  },\
  {\
    "text":"value",\
    "italic":true\
  },\
  " = 0 = disabled --> default\n",\
  {\
    "text":"value",\
    "italic":true\
  },\
  " = 1 = chat notification\n",\
  {\
    "text":"value",\
    "italic":true\
  },\
  " = 2 = sound notification\n",\
  {\
    "text":"value",\
    "italic":true\
  },\
  " = 3 = chat + sound notification\n",\
  {\
    "text":"Your current value: ",\
    "color":"gray"\
  },\
  {\
    "color":"gray",\
    "score":\
    {\
      "objective":"sleep.notification",\
      "name":"@s"\
    }\
  },\
  "\n\nAmount of players that have to sleep\n",\
  {\
    "text":"/scoreboard players set &amount_to_sleep sleep.config value\n",\
    "clickEvent":\
    {\
      "action":"copy_to_clipboard",\
      "value":"/scoreboard players set &amount_to_sleep sleep.config"\
    },\
    "hoverEvent":\
    {\
      "action":"show_text",\
      "contents":"click to copy"\
    },\
    "color":"yellow"\
  },\
  {\
    "text":"value",\
    "italic":true\
  },\
  " = amount of players --> default = 1\n",\
  {\
    "text":"Current value: ",\
    "color":"gray"\
  },\
  {\
    "color":"gray",\
    "score":\
    {\
      "objective":"sleep.config",\
      "name":"&amount_to_sleep"\
    }\
  },\
  "\n\nChange if percentage of players should be used\n",\
  {\
    "text":"/scoreboard players set &percentage_mode sleep.config value\n",\
      "clickEvent":\
      {\
        "action":"copy_to_clipboard",\
        "value":"/scoreboard players set &percentage_mode sleep.config"\
      },\
      "hoverEvent":\
      {\
        "action":"show_text",\
        "contents":"click to copy"\
      },\
    "color":"yellow"\
  },\
  {\
    "text":"value",\
    "italic":true\
  },\
  " = 0 = disabled --> default\nvalue = 1 = enabled\n",\
  {\
    "text":"Current value: ",\
    "color":"gray"\
  },\
  {\
    "color":"gray",\
    "score":\
    {\
      "objective":"sleep.config",\
      "name":"&percentage_mode"\
    }\
  },\
  "\n\nPercentage of players that have to sleep\n",\
  {\
    "text":"/scoreboard players set &percentage_to_sleep sleep.config value\n",\
      "clickEvent":\
      {\
        "action":"copy_to_clipboard",\
        "value":"/scoreboard players set &percentage_to_sleep sleep.config"\
      },\
      "hoverEvent":\
      {\
        "action":"show_text",\
        "contents":"click to copy"\
      },\
    "color":"yellow"\
  },\
  {\
    "text":"value",\
    "italic":true\
  },\
  " = percentage of players --> default = 50\n",\
  {\
    "text":"Current value: ",\
    "color":"gray"\
  },\
  {\
    "color":"gray",\
    "score":\
    {\
      "objective":"sleep.config",\
      "name":"&percentage_to_sleep"\
    }\
  },\
  "\n\nChange between night skip and time warp\n",\
  {\
    "text":"/scoreboard players set &time_control sleep.config value\n",\
      "clickEvent":\
      {\
        "action":"copy_to_clipboard",\
        "value":"/scoreboard players set &time_control sleep.config"\
      },\
      "hoverEvent":\
      {\
        "action":"show_text",\
        "contents":"click to copy"\
      },\
    "color":"yellow"\
  },\
  {\
    "text":"value ",\
    "italic":true\
  },\
  "= 0 = night skip --> default\n",\
  {\
    "text":"value ",\
    "italic":true\
  },\
  "= 1 = time warp\n",\
  {\
    "text":"Current value: ",\
    "color":"gray"\
  },\
  {\
    "color":"gray",\
    "score":\
    {\
      "objective":"sleep.config",\
      "name":"&time_control"\
    }\
  },\
  "\n\nChange how long a night should take\n",\
  {"text":"/scoreboard players set &time_until_skip sleep.config value\n",\
    "clickEvent":\
    {\
      "action":"copy_to_clipboard",\
      "value":"/scoreboard players set &time_until_skip sleep.config"\
    },\
    "hoverEvent":\
    {\
      "action":"show_text",\
      "contents":"click to copy"\
    },\
    "color":"yellow",\
    "italic":true\
  },\
  {\
    "text":"value",\
    "italic":true\
  },\
  " = time in seconds\n",\
  {\
    "text":"Current value: ",\
    "color":"gray"\
  },\
  {\
    "color":"gray",\
    "score":\
    {\
      "objective":"sleep.config",\
      "name":"&time_until_skip"\
    }\
  },\
  "\n\nChange name display in actionbar\n",\
  {\
    "text":"/scoreboard players set &actionbar_display sleep.config value\n",\
    "clickEvent":\
    {\
      "action":"copy_to_clipboard",\
      "value":"/scoreboard players set &actionbar_display sleep.config"\
    },\
    "hoverEvent":\
    {\
      "action":"show_text",\
      "contents":"click to copy"\
    },\
    "color":"yellow",\
    "italic":true\
  },\
  {\
    "text":"value",\
    "italic":true\
  },\
  " = 0 = disabled\n",\
  {\
    "text":"value",\
    "italic":true\
  },\
  " = 1 = Only names --> default\n",\
  {\
    "text":"value",\
    "italic":true\
  },\
  " = 2 = @s selector (e.g. prefix will be shown)\n",\
  {\
    "text":"Your current value: ",\
    "color":"gray"\
  },\
  {\
    "color":"gray",\
    "score":\
      {\
        "objective":"sleep.config",\
        "name":"&actionbar_display"\
      }\
  },\
  "\n\nChange to get heal when sleeping\n",\
  {\
    "text":"/scoreboard players set &heal_when_sleeping sleep.config value\n",\
    "clickEvent":\
    {\
      "action":"copy_to_clipboard",\
      "value":"/scoreboard players set &heal_when_sleeping sleep.config"\
    },\
    "hoverEvent":\
    {\
      "action":"show_text",\
      "contents":"click to copy"\
    },\
    "color":"yellow",\
    "italic":true\
  },\
  {\
    "text":"value",\
    "italic":true\
  },\
  " = 0 = disabled --> default\n",\
  {\
    "text":"value",\
    "italic":true\
  },\
  " = 1 = Slow regeneration\n",\
  {\
    "text":"value",\
    "italic":true\
  },\
  " = 2 = Instant full health\n",\
  {\
    "text":"Current value: ",\
    "color":"gray"\
  },\
  {\
    "color":"gray",\
    "score":\
    {\
      "objective":"sleep.config",\
      "name":"&heal_when_sleeping"\
    }\
  },\
  "\n\nTo uninstall run:\n",\
  {\
    "text":"/function sleep:uninstall",\
    "color":"yellow"\
  },\
  "\n\n",\
  {\
    "text":"[LINK] ",\
    "color":"gray",\
    "clickEvent":\
      {\
        "action":"open_url",\
        "value":"https://modrinth.com/datapack/sleep"\
      },\
    "hoverEvent":\
      {\
        "action":"show_text",\
        "contents":"modrinth.com/datapack/sleep"\
      }\
  },\
  {\
    "text":"Modrinth Sleep",\
    "color":"dark_purple",\
    "clickEvent":\
    {\
      "action":"open_url",\
      "value":"https://modrinth.com/datapack/sleep"\
    },\
    "hoverEvent":\
    {\
      "action":"show_text",\
      "contents":"modrinth.com/datapack/sleep"\
    }\
  },\
  "\n\n",\
  {\
    "text":"[LINK] ",\
    "color":"gray",\
    "clickEvent":\
    {\
      "action":"open_url",\
      "value":"https://discord.gg/ScXkDNHnYX"\
    },\
    "hoverEvent":\
    {\
      "action":"show_text",\
      "contents":"discord.gg/ScXkDNHnYX"\
    }\
  },\
  {\
    "text":"Discord Server",\
    "color":"blue",\
    "clickEvent":\
    {\
      "action":"open_url",\
      "value":"https://discord.gg/ScXkDNHnYX"\
    },\
    "hoverEvent":\
    {\
      "action":"show_text",\
      "contents":"discord.gg/ScXkDNHnYX"\
    }\
  },\
  " --> for issues, suggestions, questions and news"\
]


