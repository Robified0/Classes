##Executing as player casting spell (mage/spells/water/dolpgrace/cast)

#Give Effect
effect give @s minecraft:dolphins_grace 60 0 false

#Particle effect
particle minecraft:falling_dripstone_water ~ ~ ~ 0.6 1 0.6 0.01 80 force

#Playsound Effect
playsound minecraft:block.water.ambient player @a ~ ~ ~ 1 1
playsound minecraft:entity.dolphin.play player @a ~ ~ ~ 1 1

#Cast Spell Sound Effect
function classes:main/mana_system/mage/cast

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Dolphin's Grace!","bold":true,"color":"#0096FF"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 2
