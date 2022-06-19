##Executing as player who has just joined (root/main)

## Silence commandFeedback for the time being
execute if score #cl.pref cl.track.commandFeedback matches 1 run gamerule sendCommandFeedback false

#Enable Class trigger, to allow selecting of class
scoreboard players enable @s cl.Class

loot spawn ~ ~ ~ loot classes:items/books/classselect

#Tag player to avoid spam
tag @s add cl.o.Joined
