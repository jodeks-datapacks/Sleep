execute as @a[scores={sleep_notification=1}] at @s if score &daytime sleep.clock matches 12542 run tellraw @s {"text":"You can sleep now","color":"yellow", "hoverEvent":{"action":"show_text","value":[{"text":"by clicking on a bed"}]}}

execute as @a[scores={sleep_notification=2}] at @s if score &daytime sleep.clock matches 12542 run playsound minecraft:block.note_block.cow_bell voice

execute as @a[scores={sleep_notification=3}] at @s if score &daytime sleep.clock matches 12542 run tellraw @s {"text":"You can sleep now","color":"yellow", "hoverEvent":{"action":"show_text","value":[{"text":"by clicking on a bed"}]}}

execute as @a[scores={sleep_notification=3}] at @s if score &daytime sleep.clock matches 12542 run playsound minecraft:block.note_block.cow_bell voice