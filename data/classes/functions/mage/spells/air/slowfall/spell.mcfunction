#Set scoreboard timer - must match effect time below multiplied by 20.
scoreboard players set @s cl.e.SlowFall 900

#Give Effect
effect give @s minecraft:slow_falling 45 0 false

#Particle effect
particle minecraft:cloud ~ ~ ~ 0.5 0.75 0.5 0.25 100 force

#Playsound Effect
playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 0.5 1

#Cast Spell Sound Effect
function classes:main/mana_system/mage/cast

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Slow Fall!","bold":true,"color":"#FFFF80"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 4
