#Only change function line for each different spell
scoreboard players add system cl.slo_id 1
scoreboard players operation @s cl.slo_id = system cl.slo_id
scoreboard players operation @s cl.s.Teleport.t = system cl.slo_id
summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","slowcast", "teleport"]}
execute as @e[type=marker,tag=slowcast,tag=new,tag=teleport,limit=1] run function classes:mage/spells/teleport/zprivate/setup
tag @s remove this

#Cast Spell Sound Effect
function classes:mage/spells/all/cast
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1

#Particles
particle minecraft:witch ~ ~ ~ 0.3 1 0.3 1.2 40 force
particle minecraft:reverse_portal ~ ~ ~ 0.8 1 0.8 0.03 50 force

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Give player tag for teleport
tag @s add Teleport

#Spell Cast Notification
tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Teleport!","bold":true,"color":"light_purple"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 2
