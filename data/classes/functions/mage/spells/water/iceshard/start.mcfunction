#Not Enough Mana
execute if entity @s[scores={cl.Mana=..1}] run function classes:main/mana_system/nomana

#Only change function line for each different spell
scoreboard players add system cl.slo_id 1
scoreboard players operation @s cl.slo_id = system cl.slo_id
summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","slowcast", "iceshard"]}
execute as @e[type=marker,tag=slowcast,tag=new,tag=iceshard,limit=1] run function classes:mage/spells/water/iceshard/zprivate/setup
tag @s remove this

#Cast Spell Sound Effect
function classes:mage/spells/all/cast

#Particles
particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force
particle dust 0.129 0.914 1.000 1 ~ ~ ~ 0.5 1 0.5 1 50 force

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Spell Cast Notification
tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Ice Shard!","bold":true,"color":"#0096FF"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 2