##Cast Spell

#Set scoreboard timer - must match effect time below multiplied by 20.
scoreboard players set @s cl.e.BunnyHop 900

#Give Effect
effect give @s minecraft:jump_boost 45 1 false

#Particles
particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 40 normal
particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force

#Cast Spell Sound Effect
function classes:main/mana_system/mage/cast
playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 1 1

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Bunny Hop!","bold":true,"color":"#FFFF80"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 4
