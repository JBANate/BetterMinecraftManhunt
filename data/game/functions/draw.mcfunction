gamemode spectator @a
title @a[team=Runners] title {"text": "The game ended in a draw.", "color": "yellow"}
title @a[team=Dead] title {"text": "The game ended in a draw.", "color": "yellow"}
title @a[team=Hunters] title {"text": "The game ended in a draw.", "color": "yellow"}
title @a[team=Spectators] title {"text": "The game ended in a draw.", "color": "yellow"}
scoreboard players set @a DeathCount 0
scoreboard players set @a UseCount 0
team join Runners @a[team=Dead]