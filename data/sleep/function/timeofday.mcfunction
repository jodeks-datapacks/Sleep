scoreboard players set &daytime sleep.clock 0

execute store result score &daytime sleep.clock run time query daytime


# calc how long until 24000 --> skip_time
execute if score &daytime sleep.clock matches 1 run scoreboard players set &skip_time sleep.clock 12000

execute if score &daytime sleep.clock > &fixed_value_12000 sleep.clock run scoreboard players remove &skip_time sleep.clock 1


execute store result storage sleep:skip_time_macro value int 1 run scoreboard players get &skip_time sleep.clock




