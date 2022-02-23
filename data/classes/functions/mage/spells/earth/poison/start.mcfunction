#Only change function line for each different spell
scoreboard players add system cl.slo_id 1
scoreboard players operation @s cl.slo_id = system cl.slo_id
summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["cl.new","cl.slowcast", "cl.poison"]}
execute as @e[type=marker,tag=cl.slowcast,tag=cl.new,tag=cl.poison,limit=1] run function classes:mage/spells/earth/poison/zprivate/setup
tag @s remove cl.this

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Cast Spell Sound Effect
function classes:main/mana_system/mage/cast

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Poison!","bold":true,"color":"#03800F"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 1
