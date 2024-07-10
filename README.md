# Sleep

## Features

**1.** Sleeping players are displayed over the hotbar

**2.** Change how many players have to sleep to skip the night in the config

**3.** Change if the night should be instantly skipped or just accelerated in the config

**4.** Change how long it should take to skip the night in the config

**5.** Set for yourself a notification for when you can sleep

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

---

## Datapack created by Jodek published on modrinth: https://modrinth.com/user/Jodek

<picture>
   <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/Mqxx/GitHub-Markdown/main/blockquotes/badge/light-theme/tip.svg">
  <img alt="Tip" src="https://raw.githubusercontent.com/Mqxx/GitHub-Markdown/main/blockquotes/badge/dark-theme/tip.svg">
 </picture><br>
 
Questions or issues? -> [discord server](https://discord.gg/z2n3qTzQY6) | _or create an issue on github_
