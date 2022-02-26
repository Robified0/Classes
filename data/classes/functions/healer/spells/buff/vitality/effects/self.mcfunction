#If Player is looking at ground:
effect give @s minecraft:health_boost 60 1 false
effect give @s minecraft:instant_health 1 1 true
scoreboard players set @s cl.e.Vitality 1200

#Cast Spell Sound Effect
function classes:main/mana_system/healer/cast

#Particles
particle minecraft:wax_off ~ ~ ~ 0.5 0.5 0.5 0.01 50 force
particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 0.08 50 force

#Add Cooldown
scoreboard players set @s cl.Cooldown 20

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Vitality!","bold":true,"color":"green"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 4
