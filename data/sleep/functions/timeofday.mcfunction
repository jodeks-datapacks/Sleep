scoreboard players set Timeofday sleep.clock 0

execute store result score Timeofday sleep.clock run time query daytime
execute if score Timeofday sleep.clock matches 12542 run tellraw @a {"text":"You can sleep now","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"by clicking on a bed"}]}}

