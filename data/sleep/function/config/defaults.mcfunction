#> sleep/config/defaults
# Set default values for sleep.config

execute unless score &time_until_skip sleep.config = &time_until_skip sleep.config run scoreboard players set &time_until_skip sleep.config 5


execute unless score &amount_to_sleep sleep.config = &amount_to_sleep sleep.config run scoreboard players set &amount_to_sleep sleep.config 1


execute unless score &percentage_mode sleep.config = &percentage_mode sleep.config run scoreboard players set &percentage_mode sleep.config 0

execute unless score &percentage_to_sleep sleep.config = &percentage_to_sleep sleep.config run scoreboard players set &percentage_to_sleep sleep.config 50


execute unless score &time_control sleep.config = &time_control sleep.config run scoreboard players set &time_control sleep.config 0


execute unless score &afk_players_sleep sleep.config = &afk_players_sleep sleep.config run scoreboard players set &afk_players_sleep sleep.config 0


execute as @a unless score @s sleep.actionbar_display_name = @s sleep.actionbar_display_name run scoreboard players set @s sleep.actionbar_display_name 1

execute as @a unless score @s sleep.actionbar_display_selector = @s sleep.actionbar_display_selector run scoreboard players set @s sleep.actionbar_display_selector 0


execute as @a unless score @s sleep.notification_chat = @s sleep.notification_chat run scoreboard players set @s sleep.notification_chat 1

execute as @a unless score @s sleep.notification_sound = @s sleep.notification_sound run scoreboard players set @s sleep.notification_sound 0


execute unless score &heal_instant sleep.config = &heal_instant sleep.config run scoreboard players set &heal_instant sleep.config 0

execute unless score &heal_regeneration sleep.config = &heal_regeneration sleep.config run scoreboard players set &heal_regeneration sleep.config 0