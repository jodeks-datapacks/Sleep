scoreboard players set @a sleep.config 0

$dialog show @s {\
  type:"minecraft:multi_action",\
  title:"Sleep Config",\
  "body": {\
    "type": "minecraft:plain_message",\
    "contents": [\
      "Explanation - Hover for info",\
      "\n",\
      "\n",\
      {\
        "text": "Skip condition",\
        "hover_event": {\
          "action": "show_text",\
          "value": [\
            "Choose between the amount of players or percentage of players that need to sleep",\
            "\n",\
            "The setting you pick will determine which value is used"\
          ]\
        }\
      },\
      "\n",\
      {\
        "text": "Time control",\
        "hover_event": {\
          "action": "show_text",\
          "value": [\
            "Choose between Night Skip or Night Warp",\
            "\n",\
            "Night Skip: The night ends instantly once the sleep requirement is met",\
            "\n",\
            "Night Warp: Time speeds up while players are in bed, and the night passes gradually over the configured duration"\
          ]\
        }\
      },\
      "\n",\
      {\
        "text": "Tick accelerate",\
        "hover_event": {\
          "action": "show_text",\
          "value": [\
            "Only works if Night Warp is enabled",\
            "\n",\
            "Its independent from the configured time, it increases the game tick rate",\
            "\n",\
            "For example, furnaces smelt faster and crops grow faster",\
            "\n",\
            "Only works on servers with function-permission-level set to 3 (in server.properties)"\
          ]\
        }\
      }\
    ]\
  },\
  inputs:[\
    {\
      "type": "minecraft:single_option",\
      "key": "dialog_percentage_mode",\
      "label": "Skip condition",\
      "options": [\
        {\
          "id": "0",\
          "display": "Amount of players",\
          "initial": $(amount_mode_initial)\
        },\
        {\
          "id": "1",\
          "display": "Percentage of players",\
          "initial": $(percentage_mode_initial)\
        }\
      ]\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_amount_to_sleep",\
      label:"Amount of players that have to sleep",\
      initial:"$(amount_to_sleep)"\
    },\
    {\
      "type": "minecraft:number_range",\
      "key": "dialog_percentage_to_sleep",\
      "label": "Percentage to sleep",\
      "start": 0,\
      "end": 100,\
      "step": 1,\
      "initial": $(percentage_to_sleep)\
    },\
    {\
      "type": "minecraft:single_option",\
      "key": "dialog_time_control",\
      "label": "Time control",\
      "options": [\
        {\
          "id": "0",\
          "display": "Night Skip",\
          "initial": $(time_skip_initial)\
        },\
        {\
          "id": "1",\
          "display": "Time Warp",\
          "initial": $(time_warp_initial)\
        }\
      ]\
    },\
    {\
      "type": "minecraft:number_range",\
      "key": "dialog_time_until_skip",\
      "label": "Time until the night skips (s)",\
      "start": 1,\
      "end": 100,\
      "step": 1,\
      "initial": $(time_until_skip)\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_tick_accelerate",\
      "label": "Tick accelerate",\
      "initial": $(tick_accelerate),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_afk_players_sleep",\
      "label": "AFK players don't need to sleep",\
      "initial": $(afk_players_sleep),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_dimension_sleep",\
      "label": "Players in other dimensions don't need to sleep",\
      "initial": $(dimension_sleep),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_heal_instant",\
      "label": "Instant heal when sleeping",\
      "initial": $(heal_instant),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_heal_regeneration",\
      "label": "Regenerate health when sleeping",\
      "initial": $(heal_regeneration),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:single_option",\
      "key": "dialog_actionbar_display",\
      "label": "Actionbar display",\
      "options": [\
        {\
          "id": "0",\
          "display": "Player Names",\
          "initial": $(actionbar_display_name_initial)\
        },\
        {\
          "id": "1",\
          "display": "Selector",\
          "initial": $(actionbar_display_selector_initial)\
        }\
      ]\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_notification_chat",\
      "label": "Chat Notification",\
      "initial": $(notification_chat),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_notification_sound",\
      "label": "Sound Notification",\
      "initial": $(notification_sound),\
      "on_true": "1",\
      "on_false": "0"\
    }\
  ],\
  columns:1,\
    "exit_action": {\
    "label": "Save",\
    "action": {\
      type:"dynamic/run_command",\
      template:"function sleep:config/save_config {dialog_dimension_sleep:$(dialog_dimension_sleep), dialog_amount_to_sleep:$(dialog_amount_to_sleep), dialog_percentage_mode:$(dialog_percentage_mode), dialog_percentage_to_sleep:$(dialog_percentage_to_sleep), dialog_time_control:$(dialog_time_control), dialog_time_until_skip:$(dialog_time_until_skip), dialog_tick_accelerate:$(dialog_tick_accelerate), dialog_afk_players_sleep:$(dialog_afk_players_sleep), dialog_heal_instant:$(dialog_heal_instant), dialog_heal_regeneration:$(dialog_heal_regeneration), dialog_actionbar_display:$(dialog_actionbar_display), dialog_notification_chat:$(dialog_notification_chat), dialog_notification_sound:$(dialog_notification_sound)}"\
    }\
  },\
  actions:[\
    {\
      "label": "Reset config to default",\
      "action": {\
        type:"run_command",\
        command:"function sleep:config/set_default"\
      }\
    }\
  ]\
}