#> sleep:calculation/amount_of_sleeping_players

execute store result score &amount_of_sleeping_players sleep.players if entity @a[tag=sleep.sleeping_tag_added_at_in_bed]