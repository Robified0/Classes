### Cast Bless on player looking down
## Executing as player looking down, casting Bless

effect give @s minecraft:absorption 120 1 false
scoreboard players set @s cl.e.Bless 2400

#Cast Spell Sound Effect
function classes:main/mana_system/healer/cast

#Particles
particle minecraft:end_rod ~ ~ ~ 0.5 0.5 0.5 0.01 10 force
particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 0.08 50 force

#Add Cooldown
scoreboard players set @s cl.Cooldown 20

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Bless!","bold":true,"color":"green"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 2
