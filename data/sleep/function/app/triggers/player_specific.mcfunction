$tellraw @s \
[\
  "\n",\
  {\
    "text":"Sleep Config",\
    "bold":true\
  },\
  "\n\n",\
  "Actionbar display\n",\
  {\
    "text":"change how sleeping players should be displayed",\
    "color":"gray"\
  },\
  "\n",\
  {\
    "text":"[Name]",\
    "color":"$(actionbar_display_name_color)",\
    "clickEvent":{\
      "action":"run_command",\
      "value":"/function sleep:app/config/switch/actionbar_display_name/switch_check"\
    }\
  },\
  {\
    "text":" [Selector]",\
    "color":"$(actionbar_display_selector_color)",\
    "clickEvent":{\
      "action":"run_command",\
      "value":"/function sleep:app/config/switch/actionbar_display_selector/switch_check"\
    }\
  },\
  "\n\n",\
    "Notification\n",\
  {\
    "text":"for when you can sleep",\
    "color":"gray"\
  },\
  "\n",\
  {\
    "text":"[Chat]",\
    "color":"$(notification_chat_color)",\
    "clickEvent":{\
      "action":"run_command",\
      "value":"/function sleep:app/config/switch/notification_chat/switch_check"\
    }\
  },\
  {\
    "text":" [Sound]",\
    "color":"$(notification_sound_color)",\
    "clickEvent":{\
      "action":"run_command",\
      "value":"/function sleep:app/config/switch/notification_sound/switch_check"\
    }\
  },\
  "\n\n",\
  {\
    "text":"[General settings]",\
    "color":"white",\
    "clickEvent":{\
      "action":"run_command",\
      "value":"/function sleep:app/triggers/check"\
    }\
  }\
]