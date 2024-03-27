tag @r[team=Runners] add Tagged
execute at @r[team=Runners,tag=Tagged] as @s run spreadplayers ~ ~ 20 150 under 125 false @s
playsound entity.enderman.teleport player @a ~ ~ ~ 1 0.8 1
execute at @a[team=Runners,tag=Tagged] run playsound block.respawn_anchor.deplete player @a[team=Runners,tag=Tagged] ~ ~ ~
title @a[team=Runners,tag=Tagged] title {"text": "Your location has been compromised!", "color": "yellow"}
title @a[team=Runners,tag=Tagged] subtitle {"text": "A hunter has teleported within 150 blocks of you!", "color": "yellow"}
# effect give @a[team=Runners,tag=Tagged] glowing 10 0 true
# effect give @s glowing 45 0 true
scoreboard players remove @s UseCount 1
tag @a[team=Runners] remove Tagged