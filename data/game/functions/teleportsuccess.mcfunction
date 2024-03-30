tag @r[team=Runners] add Tagged
execute at @r[team=Runners,tag=Tagged] as @s run spreadplayers ~ ~ 20 150 under 125 false @s
playsound entity.enderman.teleport player @s ~ ~ ~ 1 0.8 1
execute at @a[team=Runners,tag=Tagged] run playsound block.respawn_anchor.deplete player @a[team=Runners,tag=Tagged] ~ ~ ~
title @a[team=Runners,tag=Tagged] title {"text": "Your location has been compromised!", "color": "yellow"}
title @a[team=Runners,tag=Tagged] subtitle {"text": "A hunter has teleported within 150 blocks of you!", "color": "yellow"}
effect give @a[team=Runners,tag=Tagged] glowing 2 0 true
effect give @s glowing 10 0 true
effect give @s slowness 2 1 true
effect give @s mining_fatigue 2 1 true
effect give @s weakness 2 1 true
scoreboard players remove @s UseCount 1
tellraw @a [{"text": "WARNING! ", "color": "red", "bold": true},{"text": "A hunter has used his ", "color": "yellow"}, {"text": "Teleport", "color": "blue"}, {"text": "ability!", "color": "yellow"}]
tag @a[team=Runners] remove Tagged