#Only change function line for each different spell
scoreboard players add #system cl.slo_id 1
scoreboard players operation @s cl.slo_id = #system cl.slo_id
summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["cl.r.new","cl.r.slowcast", "cl.r.heal"]}
execute as @e[type=marker,tag=cl.r.slowcast,tag=cl.r.new,tag=cl.r.heal,limit=1] run function classes:abilities/spells/heal/zprivate/setup
tag @s remove cl.r.this

#Cast Spell Sound Effect
function classes:main/mana_system/healer/cast

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.700.name","bold":true,"color":"green"},{"text":" !","color":"green"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 2
