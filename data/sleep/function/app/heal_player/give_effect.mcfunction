#> sleep:app/heal_player/give_effect.mcfunction
# Heal players when they are in bed

execute if score &heal_regeneration sleep.config matches 1 as @a[scores={sleep.time_in_bed=1..}] run effect give @s regeneration 1 3 true

execute if score &heal_instant sleep.config matches 1 as @a[scores={sleep.time_in_bed=1..}] run effect give @s instant_health 1 50 true