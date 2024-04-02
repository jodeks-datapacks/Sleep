loot spawn ~ ~ ~ loot sleep:player_head
data modify storage sleep:sleep player_name.name set from entity @e[nbt={Item:{tag:{sleep_player_name:1b}}},limit=1] Item.tag.SkullOwner.Name
kill @e[nbt={Item:{tag:{sleep_player_name:1b}}}]