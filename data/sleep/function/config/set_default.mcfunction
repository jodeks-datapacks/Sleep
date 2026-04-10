execute unless data storage sleep:root data.time_until_skip run data modify storage sleep:root data.time_until_skip set value 5
execute unless score &time_until_skip sleep.config = &time_until_skip sleep.config run scoreboard players set &time_until_skip sleep.config 5
data modify storage sleep:root data.dialog_time_until_skip set value "$(dialog_time_until_skip)"

execute unless data storage sleep:root data.amount_to_sleep run data modify storage sleep:root data.amount_to_sleep set value 1
execute unless score &amount_to_sleep sleep.config = &amount_to_sleep sleep.config run scoreboard players set &amount_to_sleep sleep.config 1
data modify storage sleep:root data.dialog_amount_to_sleep set value "$(dialog_amount_to_sleep)"

execute unless data storage sleep:root data.amount_mode_initial run data modify storage sleep:root data.amount_mode_initial set value 1
execute unless data storage sleep:root data.percentage_mode_initial run data modify storage sleep:root data.percentage_mode_initial set value 0
execute unless score &percentage_mode sleep.config = &percentage_mode sleep.config run scoreboard players set &percentage_mode sleep.config 0
data modify storage sleep:root data.dialog_percentage_mode set value "$(dialog_percentage_mode)"

execute unless data storage sleep:root data.percentage_to_sleep run data modify storage sleep:root data.percentage_to_sleep set value 50
execute unless score &percentage_to_sleep sleep.config = &percentage_to_sleep sleep.config run scoreboard players set &percentage_to_sleep sleep.config 50
data modify storage sleep:root data.dialog_percentage_to_sleep set value "$(dialog_percentage_to_sleep)"

execute unless data storage sleep:root data.time_skip_initial run data modify storage sleep:root data.time_skip_initial set value 1
execute unless data storage sleep:root data.time_warp_initial run data modify storage sleep:root data.time_warp_initial set value 0
execute unless score &time_control sleep.config = &time_control sleep.config run scoreboard players set &time_control sleep.config 0
data modify storage sleep:root data.dialog_time_control set value "$(dialog_time_control)"

execute unless data storage sleep:root data.afk_players_sleep run data modify storage sleep:root data.afk_players_sleep set value 0
execute unless score &afk_players_sleep sleep.config = &afk_players_sleep sleep.config run scoreboard players set &afk_players_sleep sleep.config 0
data modify storage sleep:root data.dialog_afk_players_sleep set value "$(dialog_afk_players_sleep)"

execute unless data storage sleep:root data.heal_instant run data modify storage sleep:root data.heal_instant set value 0
execute unless score &heal_instant sleep.config = &heal_instant sleep.config run scoreboard players set &heal_instant sleep.config 0
data modify storage sleep:root data.dialog_heal_instant set value "$(dialog_heal_instant)"

execute unless data storage sleep:root data.heal_regeneration run data modify storage sleep:root data.heal_regeneration set value 0
execute unless score &heal_regeneration sleep.config = &heal_regeneration sleep.config run scoreboard players set &heal_regeneration sleep.config 0
data modify storage sleep:root data.dialog_heal_regeneration set value "$(dialog_heal_regeneration)"

execute unless data storage sleep:root data.dimension_sleep run data modify storage sleep:root data.dimension_sleep set value 0
execute unless score &dimension_sleep sleep.config = &dimension_sleep sleep.config run scoreboard players set &dimension_sleep sleep.config 0
data modify storage sleep:root data.dialog_dimension_sleep set value "$(dialog_dimension_sleep)"

execute unless data storage sleep:root data.tick_accelerate run data modify storage sleep:root data.tick_accelerate set value 0
execute unless score &tick_accelerate sleep.config = &tick_accelerate sleep.config run scoreboard players set &tick_accelerate sleep.config 0
data modify storage sleep:root data.dialog_tick_accelerate set value "$(dialog_tick_accelerate)"

execute unless data storage sleep:root data.actionbar_display_name_initial run data modify storage sleep:root data.actionbar_display_name_initial set value 1
execute unless score &actionbar_display_name sleep.config = &actionbar_display_name sleep.config run scoreboard players set &actionbar_display_name sleep.config 1

execute unless data storage sleep:root data.actionbar_display_selector_initial run data modify storage sleep:root data.actionbar_display_selector_initial set value 0
execute unless score &actionbar_display_selector sleep.config = &actionbar_display_selector sleep.config run scoreboard players set &actionbar_display_selector sleep.config 0
data modify storage sleep:root data.dialog_actionbar_display set value "$(dialog_actionbar_display)"

execute unless data storage sleep:root data.notification_chat run data modify storage sleep:root data.notification_chat set value 0
execute unless score &notification_chat sleep.config = &notification_chat sleep.config run scoreboard players set &notification_chat sleep.config 0
data modify storage sleep:root data.dialog_notification_chat set value "$(dialog_notification_chat)"

execute unless data storage sleep:root data.notification_sound run data modify storage sleep:root data.notification_sound set value 0
execute unless score &notification_sound sleep.config = &notification_sound sleep.config run scoreboard players set &notification_sound sleep.config 0
data modify storage sleep:root data.dialog_notification_sound set value "$(dialog_notification_sound)"