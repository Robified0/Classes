#Summon AEC
summon area_effect_cloud ~ ~ ~ {Particle:"flame",ReapplicationDelay:100,Radius:3f,Duration:100,Tags:["cl.spell.bedofcoals"]}

#Cast Spell Sound Effect
function classes:main/mana_system/mage/cast

#Particles
particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force
particle minecraft:small_flame ~ ~ ~ 0.3 1 0.3 0.08 50 force

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.201.name","bold":true,"color":"#FF3034"},{"text":" !","color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 6
