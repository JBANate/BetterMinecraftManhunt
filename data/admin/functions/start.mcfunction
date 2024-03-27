bossbar set minecraft:countdown visible true
worldborder set 128 1
gamemode spectator @a[team=Hunters]
title @a title {"text": "Get ready for PVP!", "color": "yellow"}
title @a subtitle {"text": "45 seconds, counting down from now.", "color": "blue"}
scoreboard players set @a Countdown 900
scoreboard players set @a CountdownActive 1
tellraw @a[team=] [{"text": "Warning!", "color": "red"},{"text": "You are not on a team! This is not intended behaviour.","color": "#808080"}]