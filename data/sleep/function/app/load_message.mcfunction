#> sleep:app/load_message
# Called on load

execute if score &sleep_load_message jodek.config matches 1 run tellraw @a [\
  {\
    "text": "[",\
    "color": "#aaaaaa"\
  },\
  {\
    "text": "Sleep",\
    color: "#ffffff",\
    "hover_event": {\
      "action": "show_text",\
      "value": [\
        {\
          "nbt":"tellraw[]",\
          "storage": "sleep:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/sleep/"\
    }\
  },\
  {\
    text: "]",\
    color: "#aaaaaa",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          nbt:"tellraw[]",\
          storage: "sleep:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/sleep/"\
    }\
  },\
  {\
    translate: "jodek.loaded", fallback: " loaded! ",\
    color: "#ffffff",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          nbt:"tellraw[]",\
          storage: "sleep:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/sleep/"\
    }\
  },\
  {\
    translate: "jodek.hover_for_more_info", fallback: "hover for more info",\
    color: "#929796",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          nbt:"tellraw[]",\
          storage: "sleep:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/sleep/"\
    }\
  }\
]