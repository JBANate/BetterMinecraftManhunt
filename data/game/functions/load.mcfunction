execute at @r run worldborder center ~ ~

scoreboard objectives add DeathCount deathCount
scoreboard players set @a DeathCount 0
scoreboard objectives modify DeathCount displayname "Death counter"

scoreboard objectives add UseCount dummy
scoreboard players set @a UseCount 4
scoreboard objectives modify UseCount displayname "Teleport uses left"

scoreboard objectives add 5s dummy
scoreboard players set @a 5s 0

scoreboard objectives add Countdown dummy
scoreboard players set @a Countdown 900

scoreboard objectives add CountdownActive dummy
scoreboard players set @a CountdownActive 0

scoreboard objectives add tp trigger
scoreboard players set @a tp 0

bossbar add countdown "Preparation Phase Countdown"
bossbar set minecraft:countdown color red
bossbar set minecraft:countdown max 900
bossbar set minecraft:countdown players @a
bossbar set minecraft:countdown style notched_6
bossbar set minecraft:countdown visible false

team add Runners {"text": "Runners", "color": "#ff0000"}
team modify Runners friendlyFire false
team modify Runners seeFriendlyInvisibles true
team modify Runners color red

team add Hunters {"text": "Hunters", "color": "#0000ff"}
team modify Hunters friendlyFire false
team modify Hunters seeFriendlyInvisibles true
team modify Hunters color blue

team add Spectators {"text": "Spectators", "color": "#808080"}
team modify Spectators friendlyFire false
team modify Spectators seeFriendlyInvisibles true
team modify Spectators color gray

team add Dead {"text": "Dead", "color": "#808080"}
team modify Dead friendlyFire false
team modify Dead seeFriendlyInvisibles true
team modify Dead color gray

gamerule doImmediateRespawn true
title @a times 10t 5s 10t

tellraw @a {"text": "Set everything up automatically.", "color": "#ff0000"}
tellraw @a [{"text": "[Join runners] ", "color": "#ff0000", "clickEvent": {"action":"run_command","value":"/team join Runners @s"}}, {"text": "[Join hunters]", "color": "#0000ff", "clickEvent": {"action":"run_command","value":"/team join Hunters @s"}}]
tellraw @a [{"text": "[Spectate] ", "color": "#808080", "clickEvent": {"action":"run_command","value":"/team join Spectators @s"}}, {"text": "[Start]", "color": "#ffff00", "clickEvent": {"action":"run_command","value":"/function admin:start"}}]