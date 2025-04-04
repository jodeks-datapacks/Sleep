tellraw @s \
[\
  "\n",\
  {\
  text:"[HELP] ",\
    color:"gray"\
  },\
  {\
  text:"Sleep",\
    bold:true\
  },\
  "\n\nTo open the config run:\n",\
  {\
    text:"/trigger config.sleep",\
    color:"yellow"\
  },\
  "\n\nTo uninstall run:\n",\
  {\
    text:"/function sleep:uninstall",\
    color:"yellow"\
  },\
  "\n\n",\
  {\
    text:"[LINK] ",\
    color:"gray",\
    click_event:\
      {\
        action:"open_url",\
        url:"https://modrinth.com/datapack/sleep"\
      },\
    hover_event:\
      {\
        action:"show_text",\
        value:"modrinth.com/datapack/sleep"\
      }\
  },\
  {\
    text:"Modrinth Sleep",\
    color:"dark_purple",\
    click_event:\
    {\
      action:"open_url",\
      url:"https://modrinth.com/datapack/sleep"\
    },\
    hover_event:\
    {\
      action:"show_text",\
      value:"modrinth.com/datapack/sleep"\
    }\
  },\
  "\n\n",\
  {\
    text:"[LINK] ",\
    color:"gray",\
    click_event:\
    {\
      action:"open_url",\
      url:"https://discord.gg/ScXkDNHnYX"\
    },\
    hover_event:\
    {\
      action:"show_text",\
      value:"discord.gg/ScXkDNHnYX"\
    }\
  },\
  {\
    text:"Discord Server",\
    color:"blue",\
    click_event:\
    {\
      action:"open_url",\
      url:"https://discord.gg/ScXkDNHnYX"\
    },\
    hover_event:\
    {\
      action:"show_text",\
      value:"discord.gg/ScXkDNHnYX"\
    }\
  },\
  " --> for issues, suggestions, questions and news"\
]