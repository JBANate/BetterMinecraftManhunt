execute if score @r CountdownActive matches 1 run function game:countdownend
function game:draw
tellraw @a [{"text": "The game has been force ended by an admin. \n2", "color": "red", "bold": true},{"text": "As a result, the game has been forced into a draw.", "color": "#808080"}]