#Only change function line for each different spell
scoreboard players add system cl.slo_id 1
scoreboard players operation @s cl.slo_id = system cl.slo_id
summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["cl.new","cl.slowcast", "cl.levitate"]}
execute as @e[type=marker,tag=cl.slowcast,tag=cl.new,tag=cl.levitate,limit=1] run function classes:mage/spells/air/levitate/zprivate/setup
tag @s remove cl.this

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Cast Spell Sound Effect
function classes:main/mana_system/mage/cast

#Particles
particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 40 normal
particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Levitate!","bold":true,"color":"#FFFF80"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 2
