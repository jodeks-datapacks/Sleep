scoreboard players set Timeofday sleep.clock 0

execute store result score Timeofday sleep.clock run time query daytime
execute as @a[scores={sleep_notification=1}] if score Timeofday sleep.clock matches 12542 run tellraw @p {"text":"You can sleep now","color":"yellow", "hoverEvent":{"action":"show_text","value":[{"text":"by clicking on a bed"}]}}

execute as @a[scores={sleep_notification=2}] if score Timeofday sleep.clock matches 12542 run playsound minecraft:block.note_block.chime master @s
