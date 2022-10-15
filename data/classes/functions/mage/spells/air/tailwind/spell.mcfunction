#Set scoreboard timer - must match effect time below multiplied by 20.
scoreboard players set @s cl.e.TailWind 200

#Give Effect
attribute @s minecraft:generic.movement_speed modifier add 02eaa265-68d9-4906-8095-6ea88b0e906d TailWind .01 add

#Particle effect
particle minecraft:cloud ^0.5 ^ ^-0.5 1 1 1 10 40 normal

#Playsound Effect
playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 0.5 1

#Cast Spell Sound Effect
function classes:main/mana_system/mage/cast

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Tail Wind!","bold":true,"color":"#FFFF80"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 4
