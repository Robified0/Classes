### Cast Levitate on player looking down
## Executing as player looking down, casting Levitate

#Give effect
effect give @s minecraft:levitation 1 10 false
effect give @s minecraft:slow_falling 3 0 false

#Play sound effect
playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 1

#Particles
particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 40 normal
particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Levitate!","bold":true,"color":"#FFFF80"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 4
