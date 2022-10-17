##Cast Spell
particle minecraft:cloud ~ ~ ~ 0 0 0 1 200 force

#Play Sound
playsound classes:mage.spell.wind player @a ~ ~ ~ 1 1

#Give player tag
tag @s add cl.e.Wind

##Give Effect
execute as @e[type=!#classes:nontarget,sort=nearest,distance=..10] at @s run function classes:mage/spells/air/wind/effect/mob

#Remove tag
tag @s remove cl.e.Wind

#Particles
particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 40 normal
particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force

#Cast Spell Sound Effect
function classes:main/mana_system/mage/cast
playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 1 1

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Wind!","bold":true,"color":"#FFFF80"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 2
