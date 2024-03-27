scoreboard players set @a CountdownActive 0
scoreboard players set @a[team=Hunters] UseCount 3
bossbar set minecraft:countdown visible false
worldborder set 200000 1
gamemode survival @a[team=Hunters]
execute at @r[team=Runners] run spreadplayers ~ ~ 10 80 under 125 false @a[team=Hunters]
title @a title {"text": "PVP is now active!", "color": "dark_red"}
title @a subtitle {"text": "Go get them!", "color": "red"}
scoreboard players set @a Countdown 0

clear @a[team=Hunters]
# item replace entity @a[team=Hunters] armor.head with minecraft:leather_helmet
# item replace entity @a[team=Hunters] armor.chest with minecraft:iron_chestplate
# item replace entity @a[team=Hunters] armor.legs with air
# item replace entity @a[team=Hunters] armor.feet with minecraft:leather_boots
# item replace entity @a[team=Hunters] armor.chest with iron_chestplate
item replace entity @a[team=Hunters] hotbar.0 with minecraft:wooden_sword
# item replace entity @a[team=Hunters] hotbar.1 with minecraft:wooden_axe
# item replace entity @a[team=Hunters] hotbar.2 with minecraft:wooden_pickaxe
item replace entity @a[team=Hunters] hotbar.4 with minecraft:oak_planks 16
# item replace entity @a[team=Hunters] hotbar.5 with minecraft:bucket
# item replace entity @a[team=Hunters] inventory.0 with crafting_table
# item replace entity @a[team=Hunters] inventory.1 with cobblestone 16
# item replace entity @a[team=Hunters] inventory.2 with iron_ingot 2

scoreboard players set @a[team=Runners] DeathCount 0
scoreboard players set @a[team=Hunters] UseCount 4