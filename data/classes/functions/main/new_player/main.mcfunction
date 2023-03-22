##Executing as player who has just joined (root/main)

#Set Mana scores
scoreboard players set @s cl.Mana 20
scoreboard players set @s cl.ManaRegenSec 1

#Tag player to avoid spam
tag @s add cl.o.Joined
