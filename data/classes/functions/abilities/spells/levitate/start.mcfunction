#Only change function line for each different spell
scoreboard players add #system cl.slo_id 1
scoreboard players operation @s cl.slo_id = #system cl.slo_id
summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["cl.r.new","cl.r.slowcast", "cl.r.levitate"]}
execute as @e[type=marker,tag=cl.r.slowcast,tag=cl.r.new,tag=cl.r.levitate,limit=1] run function classes:abilities/spells/levitate/zprivate/setup
tag @s remove cl.r.this

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Cast Spell Sound Effect
function classes:main/mana_system/mage/cast

#Particles
particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 40 normal
particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.400.name","bold":true,"color":"gold"},{"text":" !","color":"green"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 4
