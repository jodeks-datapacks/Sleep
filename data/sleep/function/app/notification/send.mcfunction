#> sleep/notification/send
# Send the notification to the player

execute as @a[scores={sleep.notification_chat=1}] at @s if score &daytime sleep.time_values matches 12542 run tellraw @s {"text":"You can sleep now","color":"yellow", "hoverEvent":{"action":"show_text","value":[{"text":"by clicking on a bed"}]}}

execute as @a[scores={sleep.notification_sound=1}] at @s if score &daytime sleep.time_values matches 12542 run playsound minecraft:block.note_block.cow_bell voice