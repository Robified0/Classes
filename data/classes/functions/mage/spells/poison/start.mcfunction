#Only change function line for each different spell
scoreboard players add system cl.slo_id 1
scoreboard players operation @s cl.slo_id = system cl.slo_id
summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","slowcast", "poison"]}
execute as @e[type=marker,tag=slowcast,tag=new,tag=poison,limit=1] run function classes:mage/spells/poison/zprivate/setup
tag @s remove this

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Cast Spell Sound Effect
function classes:mage/spells/all/cast

#Spell Cast Notification
tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Poison!","bold":true,"color":"#03800F"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 1
