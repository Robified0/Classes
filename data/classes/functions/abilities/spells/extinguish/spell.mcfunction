##Executing as player casting spell (abilities/spells/extinguish/cast)

#Particle effect
particle minecraft:falling_dripstone_water ~ ~2 ~ 10 3 10 0.01 2000 force

#Playsound Effect
playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 10 0.4
playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 10 1.5

#Cast Spell Sound Effect
function classes:main/mana_system/mage/cast

#Effect
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace fire

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.307.name","bold":true,"color":"blue"},{"text":" !","color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 2
