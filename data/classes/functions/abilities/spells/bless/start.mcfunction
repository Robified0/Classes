#Only change function line for each different spell
scoreboard players add #system cl.slo_id 1
scoreboard players operation @s cl.slo_id = #system cl.slo_id
summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["cl.r.new","cl.r.slowcast", "cl.r.bless"]}
execute as @e[type=marker,tag=cl.r.slowcast,tag=cl.r.new,tag=cl.r.bless,limit=1] run function classes:abilities/spells/bless/zprivate/setup
tag @s remove cl.r.this

#Tag spell type
tag @s add cl.spell.casted.holy

#Cast Spell Sound Effect
function classes:main/mana_system/cast

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.710.name","bold":true,"color":"green"},{"text":" !","color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Depletion
scoreboard players remove @s cl.Mana 6
