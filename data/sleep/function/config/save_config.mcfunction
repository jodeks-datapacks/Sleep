$scoreboard players set &actionbar_display sleep.check $(dialog_actionbar_display)
$scoreboard players set &percentage_mode sleep.check $(dialog_percentage_mode)
$scoreboard players set &time_control sleep.check $(dialog_time_control)

$data modify storage sleep:root data.amount_to_sleep set value $(dialog_amount_to_sleep)

execute if score &percentage_mode sleep.check matches 0 run data modify storage sleep:root data.amount_mode_initial set value 1
execute if score &percentage_mode sleep.check matches 0 run data modify storage sleep:root data.percentage_mode_initial set value 0
execute if score &percentage_mode sleep.check matches 1 run data modify storage sleep:root data.amount_mode_initial set value 0
execute if score &percentage_mode sleep.check matches 1 run data modify storage sleep:root data.percentage_mode_initial set value 1

$data modify storage sleep:root data.percentage_to_sleep set value $(dialog_percentage_to_sleep)

execute if score &time_control sleep.check matches 0 run data modify storage sleep:root data.time_skip_initial set value 1
execute if score &time_control sleep.check matches 0 run data modify storage sleep:root data.time_warp_initial set value 0
execute if score &time_control sleep.check matches 1 run data modify storage sleep:root data.time_skip_initial set value 0
execute if score &time_control sleep.check matches 1 run data modify storage sleep:root data.time_warp_initial set value 1

$data modify storage sleep:root data.heal_instant set value $(dialog_heal_instant)
$data modify storage sleep:root data.heal_regeneration set value $(dialog_heal_regeneration)

$data modify storage sleep:root data.time_until_skip set value $(dialog_time_until_skip)

$data modify storage sleep:root data.afk_players_sleep set value $(dialog_afk_players_sleep)

$data modify storage sleep:root data.dimension_sleep set value $(dialog_dimension_sleep)

$data modify storage sleep:root data.tick_accelerate set value $(dialog_tick_accelerate)

execute if score &actionbar_display sleep.check matches 0 run data modify storage sleep:root data.actionbar_display_name_initial set value 1
execute if score &actionbar_display sleep.check matches 0 run data modify storage sleep:root data.actionbar_display_selector_initial set value 0
execute if score &actionbar_display sleep.check matches 1 run data modify storage sleep:root data.actionbar_display_name_initial set value 0
execute if score &actionbar_display sleep.check matches 1 run data modify storage sleep:root data.actionbar_display_selector_initial set value 1

$data modify storage sleep:root data.notification_chat set value $(dialog_notification_chat)
$data modify storage sleep:root data.notification_sound set value $(dialog_notification_sound)

execute if score &actionbar_display sleep.check matches 0 run scoreboard players set &actionbar_display_name sleep.config 1
execute if score &actionbar_display sleep.check matches 1 run scoreboard players set &actionbar_display_name sleep.config 0

execute if score &actionbar_display sleep.check matches 1 run scoreboard players set &actionbar_display_selector sleep.config 1
execute if score &actionbar_display sleep.check matches 0 run scoreboard players set &actionbar_display_selector sleep.config 0


$scoreboard players set &time_until_skip sleep.config $(dialog_time_until_skip)


$scoreboard players set &amount_to_sleep sleep.config $(dialog_amount_to_sleep)


$scoreboard players set &percentage_mode sleep.config $(dialog_percentage_mode)

$scoreboard players set &percentage_to_sleep sleep.config $(dialog_percentage_to_sleep)


$scoreboard players set &time_control sleep.config $(dialog_time_control)


$scoreboard players set &afk_players_sleep sleep.config $(dialog_afk_players_sleep)


$scoreboard players set &dimension_sleep sleep.config $(dialog_dimension_sleep)


$scoreboard players set &tick_accelerate sleep.config $(dialog_tick_accelerate)


$scoreboard players set &notification_chat sleep.config $(dialog_notification_chat)

$scoreboard players set &notification_sound sleep.config $(dialog_notification_sound)


$scoreboard players set &heal_instant sleep.config $(dialog_heal_instant)

$scoreboard players set &heal_regeneration sleep.config $(dialog_heal_regeneration)



data modify storage sleep:root data.dialog_amount_to_sleep set value "$(dialog_amount_to_sleep)"
data modify storage sleep:root data.dialog_percentage_mode set value "$(dialog_percentage_mode)"
data modify storage sleep:root data.dialog_percentage_to_sleep set value "$(dialog_percentage_to_sleep)"
data modify storage sleep:root data.dialog_time_control set value "$(dialog_time_control)"
data modify storage sleep:root data.dialog_time_until_skip set value "$(dialog_time_until_skip)"
data modify storage sleep:root data.dialog_afk_players_sleep set value "$(dialog_afk_players_sleep)"
data modify storage sleep:root data.dialog_heal_instant set value "$(dialog_heal_instant)"
data modify storage sleep:root data.dialog_heal_regeneration set value "$(dialog_heal_regeneration)"
data modify storage sleep:root data.dialog_actionbar_display set value "$(dialog_actionbar_display)"
data modify storage sleep:root data.dialog_notification_chat set value "$(dialog_notification_chat)"
data modify storage sleep:root data.dialog_notification_sound set value "$(dialog_notification_sound)"

data modify storage sleep:root data.dialog_dimension_sleep set value "$(dialog_dimension_sleep)"

data modify storage sleep:root data.dialog_tick_accelerate set value "$(dialog_tick_accelerate)"