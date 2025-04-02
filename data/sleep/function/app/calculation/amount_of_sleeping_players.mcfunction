#> sleep:calculation/amount_of_sleeping_players

execute store result score &amount_of_sleeping_players sleep.sleeping_players if entity @a[tag=sleeping]

