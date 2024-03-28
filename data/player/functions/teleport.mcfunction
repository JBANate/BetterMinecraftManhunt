execute if score @s UseCount matches 1.. as @s run function game:teleportsuccess
execute if score @s UseCount matches 0 run tellraw @s {"text": "You have no more uses left!", "color": "red"}
scoreboard players set @s tp 0