scoreboard players set @a sleep.config 0

# Set options per page - adjust this value as needed
scoreboard players set #total_pages chat_config.sleep 3

execute unless score @s chat_config.sleep.page matches 0.. run scoreboard players set @s chat_config.sleep.page 1

function sleep:chat_config/process/build {\
  title: "Sleep Config",\
  target: "@s",\
  options: [\
    {\
      type: "slider",\
      name: "Amount of players that have to sleep:",\
      description: "",\
      scoreboard: "sleep.config",\
      score_holder: "&amount_to_sleep",\
      command_increase: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/amount_to_sleep/increase",\
      command_decrease: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/amount_to_sleep/decrease",\
      page: 1\
    },\
    {\
      type: "toggle",\
      name: "Percentage mode",\
      description: "Enabling this will use the percentage of players that have to sleep instead of the amount",\
      scoreboard: "sleep.config",\
      score_holder: "&percentage_mode",\
      command_on: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/percentage_mode/command_on",\
      command_off: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/percentage_mode/command_off",\
      page: 1\
    },\
    {\
      type: "slider",\
      name: "Percentage of players that have to sleep:",\
      description: "",\
      scoreboard: "sleep.config",\
      score_holder: "&percentage_to_sleep",\
      command_increase: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/percentage_to_sleep/increase",\
      command_decrease: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/percentage_to_sleep/decrease",\
      page: 1\
    },\
    {\
      type: "toggle",\
      name: "Time warp",\
      description: "Enabling this will use time warp instead of instant night skip",\
      scoreboard: "sleep.config",\
      score_holder: "&time_control",\
      command_on: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/time_control/command_on",\
      command_off: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/time_control/command_off",\
      page: 1\
    },\
    {\
      type: "slider",\
      name: "Time until the night skips:",\
      description: "",\
      scoreboard: "sleep.config",\
      score_holder: "&time_until_skip",\
      command_increase: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/time_until_skip/increase",\
      command_decrease: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/time_until_skip/decrease",\
      page: 1\
    },\
    {\
      type: "toggle",\
      name: "AFK players don't need to sleep",\
      description: "If turned on, afk players are included in the count of online players",\
      scoreboard: "sleep.config",\
      score_holder: "&afk_players_sleep",\
      command_on: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/afk_players_sleep/command_on",\
      command_off: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/afk_players_sleep/command_off",\
      page: 2\
    },\
    {\
      type: "header",\
      name: "Heal when sleeping",\
      page: 2\
    },\
    {\
      type: "toggle",\
      name: "Regeneration",\
      scoreboard: "sleep.config",\
      score_holder: "&heal_regeneration",\
      command_on: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/heal/regeneration/command_on",\
      command_off: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/heal/regeneration/command_off",\
      page: 2\
    },\
    {\
      type: "toggle",\
      name: "Instant Health",\
      scoreboard: "sleep.config",\
      score_holder: "&heal_instant",\
      command_on: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/heal/instant/command_on",\
      command_off: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/heal/instant/command_off",\
      page: 2\
    },\
    {\
      type: "header",\
      name: "Player specific settings",\
      page: 3\
    },\
    {\
      type: "header",\
      name: "Actionbar display",\
      page: 3\
    },\
    {\
      type: "toggle",\
      name: "[Name]",\
      scoreboard: "sleep.actionbar_display_name",\
      score_holder: "@s",\
      command_on: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/actionbar/name/command_on",\
      command_off: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/actionbar/name/command_off",\
      page: 3\
    },\
    {\
      type: "toggle",\
      name: "[Selector]",\
      scoreboard: "sleep.actionbar_display_selector",\
      score_holder: "@s",\
      command_on: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/actionbar/selector/command_on",\
      command_off: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/actionbar/selector/command_off",\
      page: 3\
    },\
    {\
      type: "header",\
      name: "Notification",\
      page: 3\
    },\
    {\
      type: "toggle",\
      name: "[Chat]",\
      scoreboard: "sleep.notification_chat",\
      score_holder: "@s",\
      command_on: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/notification/chat/command_on",\
      command_off: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/notification/chat/command_off",\
      page: 3\
    },\
    {\
      type: "toggle",\
      name: "[Sound]",\
      scoreboard: "sleep.notification_sound",\
      score_holder: "@s",\
      command_on: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/notification/sound/command_on",\
      command_off: "execute as @s[scores={operator.check=1}] run function sleep:chat_config/set/notification/sound/command_off",\
      page: 3\
    },\
    {\
      type: "pagination",\
      current_page: "@s",\
      page_objective: "chat_config.sleep.page"\
    }\
  ]\
}