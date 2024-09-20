# Sleep

## Features

**1.** Sleeping players are displayed over the hotbar

**2.** Change how many players have to sleep to skip the night in the config

**3.** Use percentage instead of amount of players

**4.** Change if the night should be instantly skipped or just accelerated in the config

**5.** Change how long it should take to skip the night in the config

**6.** Set for yourself a notification for when you can sleep

**7.** Change how names should get displayed in the actionbar

**8.** Compatible with my [AFK Announcer](https://modrinth.com/datapack/afk-announcer) datapack/mod so players that are afk do not need to sleep to skip the night (you can change that with the config)

![One player is sleeping](https://cdn.modrinth.com/data/cached_images/aeb01f99d34880e1fa6cf637c6e06f233a0cbcf1.png)

![2 players are sleeping](https://cdn.modrinth.com/data/cached_images/a175cc59a3b9ef91fb5e13b2ea8f17dd345f3a1b.png)

## Config

### Config update coming soon

**To enable a notification that notifies you when you can go to bed use:**


```
/trigger sleep_notification set value
```
value = 0 = disabled --> default value

value = 1 = chat notification

value = 2 = sound notification

value = 3 = chat & sound notification

_edit the volume of the notifcation with the voice/speech percentage in the music & sound options_

You dont like the sound? tell me on my [discord server](https://discord.gg/TxDgv6Hfpf)


**Who can do this?** --> Everyone (only players who have enabled this will get a message or sound)

##

**To change how many players have to sleep to skip the night do:**

```
/scoreboard players set &amount_to_sleep sleep.config your_value
```
your_value = amount of players that have to sleep | _1 = default value_

If there are less players than your set value online, only 1 player has to sleep

**Who can change that?** --> Only server operators

## 

**If you want to use percentage instead of amount of players**
```
/scoreboard players set &percentage_mode sleep.config value
```

value = 0 = off (amount of players is used) --> default

value = 1 = on (percentage of players is used)

##

**To change the percentage of players that have to sleep**
```
scoreboard players set &percentage_to_sleep sleep.config value
```

value = percentage of players that have to sleep

_default value = 50 (so 50% of the players have to sleep)_

##

**To change between instant night skip and time warp do:**

```
/scoreboard players set &time_control sleep.config value
```
value = 0 = instant night skip --> default value

value = 1 = time warp

**Who can change that?** --> Only server operators

##

**To change how long it should take to skip a night do:**

```
/scoreboard players set &time_until_skip sleep.config value
```
value = 1 = 2 seconds

value = 2 = 5 seconds --> default value

value = 3 = 10 seconds

**Who can change that?** --> Only server operators

##

**To change if afk players should count to the players that need to sleep do:**

```
/scoreboard players set &afk_players_sleep sleep.config value
```
value = 0 = off --> default value

value = 1 = on

**Who can change that?** --> Only server operators

##

**To change how names get displayed in the actionbar**
```
/scoreboard &actionbar_display sleep.config set value
```
value = 0 = disabled ​​​​​​​

value = 1 = Only names --> default

value = 2 = @s selector (e.g. prefix will be shown)

**Who can change that?** --> Only server operators

