#If Player is looking at ground:

#Tag spell type
tag @s add cl.spell.casted.holy

#Cast Spell Sound Effect
function classes:main/mana_system/cast

#Add Cooldown
scoreboard players set @s cl.Cooldown 20

#Effect and particles
particle minecraft:composter ~ ~1 ~ 0.5 1 0.5 0.1 30 normal
particle minecraft:electric_spark ~ ~1 ~ 0.5 0.5 0.5 0.1 40 normal
particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.3 50 normal

function classes:abilities/spells/healplosion/effects/apply

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Healplosion!","bold":true,"color":"green"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 6
