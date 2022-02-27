#Summon AEC
summon area_effect_cloud ~ ~ ~ {Particle:"flame",ReapplicationDelay:20,Radius:3f,Duration:200,Tags:["cl.damage1","cl.fire","cl.angry"]}

#Cast Spell Sound Effect
function classes:main/mana_system/mage/cast

#Particles
particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force
particle minecraft:small_flame ~ ~ ~ 0.3 1 0.3 0.08 50 force

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Bed of Coals!","bold":true,"color":"#FF3034"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 6
