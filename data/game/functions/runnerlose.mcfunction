gamemode spectator @a
title @a[team=Runners] title {"text": "Your team lost the game.", "color": "red"}
title @a[team=Dead] title {"text": "Your team lost the game.", "color": "red"}
title @a[team=Hunters] title {"text": "Your team won the game!", "color": "green"}
title @a[team=Spectators] title {"text": "Hunters win the game", "color": "yellow"}
scoreboard players set @a DeathCount 0
scoreboard players set @a UseCount 0
team join Runners @a[team=Dead]