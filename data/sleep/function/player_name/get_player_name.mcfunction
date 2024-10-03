loot spawn ~ ~100 ~ loot sleep:player_head
data modify storage sleep:sleep player_name.name set from entity @e[nbt={Item:{components:{"minecraft:custom_data":{sleep_player_head:1b}}}},limit=1] Item.components."minecraft:profile".name
kill @e[nbt={Item:{components:{"minecraft:custom_data":{sleep_player_head:1b}}}}]

