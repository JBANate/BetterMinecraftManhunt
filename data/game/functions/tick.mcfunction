scoreboard players enable @a[team=Hunters] tp
execute as @a[scores={DeathCount=2}] as @s run function game:runnerdeath
execute unless entity @a[team=Runners] if entity @a[team=Dead] run function game:runnerlose
execute as @a[team=Hunters] if entity @a[advancements={minecraft:end/kill_dragon=true}] run function game:hunterlose
execute as @a[scores={tp=1..}] run function player:teleport
execute as @a[scores={tp=..-1}] run function player:teleport

scoreboard players add @a 5s 1
execute if score @r 5s matches 100 run scoreboard objectives setdisplay sidebar DeathCount
execute if score @r 5s matches 200 run scoreboard objectives setdisplay sidebar UseCount
execute if score @r 5s matches 201 run scoreboard players set @a 5s 0

execute if score @r CountdownActive matches 1 run scoreboard players remove @a Countdown 1
execute if score @r CountdownActive matches 1 run gamemode spectator @a[team=Hunters]
execute if score @r CountdownActive matches 1 run scoreboard players set @a[team=Runners] DeathCount 0
execute if score @r CountdownActive matches 1 run scoreboard players set @a[team=Hunters] UseCount 0
execute if score @r Countdown matches ..0 run function game:countdownend
execute unless score @r CountdownActive matches 1 run scoreboard players set @a Countdown 900

scoreboard players set @a[team=Runners] UseCount 0
scoreboard players set @a[team=Hunters] DeathCount 0

gamemode spectator @a[team=Spectators]

execute store result bossbar minecraft:countdown value run scoreboard players get @r Countdown

# effect give @a[team=Hunters] minecraft:glowing 1 0 true
# effect give @a[team=Runners] minecraft:glowing 1 0 true

execute as @a[team=Runners] at @s if entity @a[team=Hunters,distance=..50] run title @s[team=Runners] actionbar {"text": "There are hunters near you!", "color": "yellow"}
execute as @a[team=Hunters] at @s if entity @a[team=Runners,distance=..50] run title @s[team=Hunters] actionbar {"text": "You are near one or more runners!", "color": "yellow"}