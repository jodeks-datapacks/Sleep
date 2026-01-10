#> sleep/notification/send
# Send the notification to the player

execute if score &notification_chat sleep.config matches 1 if score &daytime sleep.time_values matches 12542 run tellraw @a {"text":"You can sleep now","color":"yellow",extra:[{"text":" (Monsters will spawn soon)","color":"gray"}]}

execute as @a at @a if score &notification_sound sleep.config matches 1 if score &daytime sleep.time_values matches 12542 run playsound minecraft:block.note_block.cow_bell voice @s ~ ~ ~ 0.3