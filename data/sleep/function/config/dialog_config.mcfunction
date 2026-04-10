scoreboard players set @a sleep.config 0

$dialog show @s {\
  type:"minecraft:multi_action",\
  title:"Sleep Config",\
  "body": {\
    "type": "minecraft:plain_message",\
    "contents": [\
      {\
        "translate": "sleep.config.explanation",\
        "fallback": "Explanation - Hover for info"\
      },\
      "\n",\
      "\n",\
      {\
        "translate": "sleep.config.skip_condition",\
        "fallback": "Skip condition",\
        "hover_event": {\
          "action": "show_text",\
          "value": [\
            {\
              "translate": "sleep.config.skip_condition.description",\
              "fallback": "Choose between the amount of players or percentage of players that need to sleep"\
            },\
            {\
              "translate": "sleep.config.skip_condition.explanation",\
              "fallback": "The setting you pick will determine which value is used"\
            }\
          ]\
        }\
      },\
      "\n",\
      {\
        "translate": "sleep.config.time_control",\
        "fallback": "Time control",\
        "hover_event": {\
          "action": "show_text",\
          "value": [\
            {\
              "translate": "sleep.config.time_control.description",\
              "fallback": "Choose between Night Skip or Night Warp"\
            },\
            "\n",\
            {\
              "translate": "sleep.config.time_control.night_skip",\
              "fallback": "Night Skip: The night ends instantly once the sleep requirement is met"\
            },\
            "\n",\
            {\
              "translate": "sleep.config.time_control.night_warp",\
              "fallback": "Night Warp: Time speeds up while players are in bed, and the night passes gradually over the configured duration"\
            }\
          ]\
        }\
      },\
      "\n",\
      {\
        "translate": "sleep.config.tick_accelerate",\
        "fallback": "Tick accelerate",\
        "hover_event": {\
          "action": "show_text",\
          "value": [\
            {\
              "translate": "sleep.config.tick_accelerate.description",\
              "fallback": "Only works if Night Warp is enabled"\
            },\
            "\n",\
            {\
              "translate": "sleep.config.tick_accelerate.explanation",\
              "fallback": "Its independent from the configured time, it increases the game tick rate"\
            },\
            "\n",\
            {\
              "translate": "sleep.config.tick_accelerate.example",\
              "fallback": "For example, furnaces smelt faster and crops grow faster"\
            },\
            "\n",\
            {\
              "translate": "sleep.config.tick_accelerate.server_warning",\
              "fallback": "Only works on servers with function-permission-level set to 3 (in server.properties)"\
            }\
          ]\
        }\
      }\
    ]\
  },\
  inputs:[\
    {\
      "type": "minecraft:single_option",\
      "key": "dialog_percentage_mode",\
      "label": {\
        "translate": "sleep.config.skip_condition",\
        "fallback": "Skip condition"\
      },\
      "options": [\
        {\
          "id": "0",\
          "display": "",\
          "display": {\
            "translate": "sleep.config.skip_condition.amount",\
            "fallback": "Amount of players"\
          },\
          "initial": $(amount_mode_initial)\
        },\
        {\
          "id": "1",\
          "display": {\
            "translate": "sleep.config.skip_condition.percentage",\
            "fallback": "Percentage of players"\
          },\
          "initial": $(percentage_mode_initial)\
        }\
      ]\
    },\
    {\
      type:"minecraft:text",\
      key:"dialog_amount_to_sleep",\
      "label": {\
        "translate": "sleep.config.amount_to_sleep",\
        "fallback": "Amount of players that have to sleep"\
      },\
      initial:"$(amount_to_sleep)"\
    },\
    {\
      "type": "minecraft:number_range",\
      "key": "dialog_percentage_to_sleep",\
      "label": {\
        "translate": "sleep.config.percentage_to_sleep",\
        "fallback": "Percentage to sleep"\
      },\
      "start": 0,\
      "end": 100,\
      "step": 1,\
      "initial": $(percentage_to_sleep)\
    },\
    {\
      "type": "minecraft:single_option",\
      "key": "dialog_time_control",\
      "label": {\
        "translate": "sleep.config.time_control",\
        "fallback": "Time control"\
      },\
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
      "label": {\
        "translate": "sleep.config.time_until_skip",\
        "fallback": "Time until the night skips (s)"\
      },\
      "start": 1,\
      "end": 100,\
      "step": 1,\
      "initial": $(time_until_skip)\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_tick_accelerate",\
      "label": {\
        "translate": "sleep.config.tick_accelerate",\
        "fallback": "Tick accelerate"\
      },\
      "initial": $(tick_accelerate),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_afk_players_sleep",\
      "label": {\
        "translate": "sleep.config.afk_players_sleep",\
        "fallback": "AFK players don't need to sleep"\
      },\
      "initial": $(afk_players_sleep),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_dimension_sleep",\
      "label": {\
        "translate": "sleep.config.dimension_sleep",\
        "fallback": "Players in other dimensions don't need to sleep"\
      },\
      "initial": $(dimension_sleep),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_heal_instant",\
      "label": {\
        "translate": "sleep.config.heal_instant",\
        "fallback": "Instant heal when sleeping"\
      },\
      "initial": $(heal_instant),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_heal_regeneration",\
      "label": {\
        "translate": "sleep.config.heal_regeneration",\
        "fallback": "Regenerate health when sleeping"\
      },\
      "initial": $(heal_regeneration),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:single_option",\
      "key": "dialog_actionbar_display",\
      "label": {\
        "translate": "sleep.config.actionbar_display",\
        "fallback": "Actionbar display"\
      },\
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
      "label": {\
        "translate": "sleep.config.notification_chat",\
        "fallback": "Chat Notification"\
      },\
      "initial": $(notification_chat),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_notification_sound",\
      "label": {\
        "translate": "sleep.config.notification_sound",\
        "fallback": "Sound Notification"\
      },\
      "initial": $(notification_sound),\
      "on_true": "1",\
      "on_false": "0"\
    }\
  ],\
  columns:1,\
    "exit_action": {\
      "label": {\
        "translate": "jodek.save",\
        "fallback": "Save"\
      },\
    "action": {\
      type:"dynamic/run_command",\
      template:"function sleep:config/save_config {dialog_dimension_sleep:$(dialog_dimension_sleep), dialog_amount_to_sleep:$(dialog_amount_to_sleep), dialog_percentage_mode:$(dialog_percentage_mode), dialog_percentage_to_sleep:$(dialog_percentage_to_sleep), dialog_time_control:$(dialog_time_control), dialog_time_until_skip:$(dialog_time_until_skip), dialog_tick_accelerate:$(dialog_tick_accelerate), dialog_afk_players_sleep:$(dialog_afk_players_sleep), dialog_heal_instant:$(dialog_heal_instant), dialog_heal_regeneration:$(dialog_heal_regeneration), dialog_actionbar_display:$(dialog_actionbar_display), dialog_notification_chat:$(dialog_notification_chat), dialog_notification_sound:$(dialog_notification_sound)}"\
    }\
  },\
  actions:[\
    {\
      "label": {\
        "translate": "jodek.reset_config",\
        "fallback": "Reset Config"\
      },\
      "action": {\
        type:"run_command",\
        command:"function sleep:config/set_default"\
      }\
    }\
  ]\
}