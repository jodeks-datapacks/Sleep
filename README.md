# Sleep

## Features

**1.** Sleeping players are displayed over the hotbar

**2.** Change how many players have to sleep to skip the night in the config

**3.** Change if the night should be instantly skipped or just accelerated in the config

**4.** Change how long it should take to skip the night in the config

**5.** Set for yourself a notification for when you can sleep

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


## Upcoming Features
**1.** Compatibility with my [AFK Announcer](https://modrinth.com/datapack/afk-announcer) datapack/mod so players that are afk do not need to sleep to skip the night

**2.** A limited time no sleep setting so you cannot sleep for e.g. 1 or 2 days
