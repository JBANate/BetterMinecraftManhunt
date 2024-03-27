# BetterMinecraftManhunt
Datapack for Minecraft that allows you to play Manhunt, but with my own rules on it. Supports more than 2 players.

# Installation
Pretty simple. Download the code as a zip and place it into the datapacks folder of your minecraft world.
> For singleplayer (why), this would usually be:
> %AppData%\.minecraft\saves\[your world name]\datapacks
>
> For servers, it would be in your server's root directory, world, then datapacks.

# Guide
## Admin
> You need operator to start the game. Or sufficient permissions for /team and /function, I guess.
As soon as you enter, it should automatically set up. However, I reccomend reloading the server (/reload) just to prevent any issues. Aditionally, check if it is enabled by doing /datapack list.
If it isn't enabled, enable it (of course). You can also do /function game:load to set everything up quickly.

From there, you should see this text:
![Set everything up automatically.]()
This means that everything has set up correctly, and you are ready to play. Add people to team using /team join [Runner/Hunter/Spectating] [player]. Now, you are ready to start.
You can either click the start button in chat, or run /function admin:start. This should start the game.

If for any reason the game needs to be stopped, you can also run /function admin:forceend

## Players
The game is pretty simple: You will start with 45 seconds of grace period, which displays a timer at the top of your screen. In this stage, all hunters will be in spectator mode, and all runners will be trapped in a 128x128 world border. After this stage, all hunters will be spread around a random runner and given a wooden sword and 16 planks. Runners have two lives each, meaning if they die twice, they will be taken out from the game. If all runners die, the game ends with the hunters winning. The hunters can die as many times as they need.

Hunters are given an ability to track runners: Teleport. This ability teleports you within 150 blocks of a random runner, and alerts this runner. You can do this by running /trigger tp OR /function player:teleport as an operator. Also, anytime you are within 50 blocks of an enemy, an alert will show up on top of your hotbar. This applies to both hunters and runners.

As usual, the game ends in the runners winning if the ender dragon dies.
The world border is 2 million by 2 million after the initial preperation phase.

# All features
Admin commands to start and force stop the game

Preperation phase (Grace period)

Starting items for the hunters

Teleport within a 150 block range of a random runner as a hunter

Runners are eliminated after 2 deaths

Runners lose if all teammates die

Hunters lose if ender dragon dies

Alert when within 50 blocks of an enemy

Spectators

That's it for now :)

# Customisation
Currently, the only way to customise is by changing the actual code of the datapack. No, I don't plan to add a configuration system as I made this for me and my friends to use. Besides, you might be able to change the correct lines if you're already hosting a server.. unless you're using a hosting service..
