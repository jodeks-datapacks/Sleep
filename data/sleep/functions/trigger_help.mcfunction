scoreboard players set @s help.sleep 0

tellraw @s ["",{"text":"[HELP]","color":"gray"}," ",{"text":"Sleep","bold":true},"\n\nNotification when you can go to bed\n",{"text":"/trigger sleep_notification set ","color":"yellow"},{"text":"value","color":"yellow","italic":true},"\n",{"text":"value","italic":true}," = 0 = disabled --> default\n",{"text":"value","italic":true}," = 1 = chat notification\n",{"text":"value","italic":true}," = 2 = sound notification\n",{"text":"value","italic":true}," = 3 = chat + sound notification\n",{"color":"gray","text":"Your current value: "},{"color":"gray","score":{"objective":"sleep_notification","name":"@s"}},"\n\nAmount of players that have to sleep\n",{"text":"/scoreboard players set &amount_to_sleep sleep.config ","color":"yellow"},{"text":"value","color":"yellow","italic":true},"\n",{"text":"value","italic":true}," = amount of players --> default = 1\n",{"text":"Current value: ","color":"gray"},{"color":"gray","score":{"objective":"sleep.config","name":"&amount_to_sleep"}},"\n\nChange between night skip and time warp\n",{"text":"/scoreboard players set &time_control sleep.config ","color":"yellow"},{"text":"value","color":"yellow","italic":true},"\n",{"text":"value ","italic":true},"= 0 = night skip --> default\n",{"text":"value ","italic":true},"= 1 = time warp\n",{"text":"Current value: ","color":"gray"},{"score":{"objective":"sleep.config","name":"&time_control"},"color":"gray"},"\n\nChange how long a night should take\n",{"text":"/scoreboard players set &time_until_skip sleep.config ","color":"yellow"},{"text":"value","italic":true,"color":"yellow"},{"text":"\nvalue","italic":true}," = 1 = 2 seconds\n",{"text":"value","italic":true}," = 2 = 5 seconds --> default\n",{"text":"value","italic":true}," = 3 = 10 seconds\n",{"text":"Current value: ","color":"gray"},{"color":"gray","score":{"objective":"sleep.config","name":"&time_until_skip"}},"\n\nTo uninstall run:\n",{"text":"/function sleep:uninstall","color":"yellow"},"\n\n",{"text":"[LINK]","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/sleep"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/sleep"},"color":"gray"},{"text":" ","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/sleep"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/sleep"}},{"text":"Modrinth Sleep","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/sleep"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/sleep"},"color":"dark_purple"},"\n\n",{"text":"[LINK]","clickEvent":{"action":"open_url","value":"https://discord.gg/ScXkDNHnYX"},"hoverEvent":{"action":"show_text","contents":"discord.gg/ScXkDNHnYX"},"color":"gray"},{"text":" ","clickEvent":{"action":"open_url","value":"https://discord.gg/ScXkDNHnYX"},"hoverEvent":{"action":"show_text","contents":"discord.gg/ScXkDNHnYX"}},{"text":"Discord Server","clickEvent":{"action":"open_url","value":"https://discord.gg/ScXkDNHnYX"},"hoverEvent":{"action":"show_text","contents":"discord.gg/ScXkDNHnYX"},"color":"blue"},"\n "]














