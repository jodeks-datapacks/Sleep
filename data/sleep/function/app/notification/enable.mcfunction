#> sleep/notification/enable

execute as @a unless score @s sleep.notification_chat = @s sleep.notification_chat run scoreboard players set @s sleep.notification_chat 0
execute as @a unless score @s sleep.notification_sound = @s sleep.notification_sound run scoreboard players set @s sleep.notification_sound 0