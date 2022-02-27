#Only change function line for each different spell
scoreboard players add system cl.slo_id 1
scoreboard players operation @s cl.slo_id = system cl.slo_id
summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["cl.r.new","cl.r.slowcast", "cl.r.satiate"]}
execute as @e[type=marker,tag=cl.r.slowcast,tag=cl.r.new,tag=cl.r.satiate,limit=1] run function classes:healer/spells/healing/satiate/zprivate/setup
tag @s remove cl.r.this

#Cast Spell Sound Effect
function classes:main/mana_system/healer/cast

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Satiate!","bold":true,"color":"green"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 2
