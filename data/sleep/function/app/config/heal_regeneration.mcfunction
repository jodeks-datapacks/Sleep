execute if score &heal_instant sleep.config matches 0 run data modify storage sleep:config heal_instant_color set value red
execute if score &heal_instant sleep.config matches 1 run data modify storage sleep:config heal_instant_color set value green

execute if score &heal_regeneration sleep.config matches 0 run data modify storage sleep:config heal_regeneration_color set value red
execute if score &heal_regeneration sleep.config matches 1 run data modify storage sleep:config heal_regeneration_color set value green