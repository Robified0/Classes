#Only change function line for each different spell
scoreboard players add system cl.slo_id 1
scoreboard players operation @s cl.slo_id = system cl.slo_id
summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","slowcast", "holystrike"]}
execute as @e[type=marker,tag=slowcast,tag=new,tag=holystrike,limit=1] run function classes:healer/spells/holystrike/zprivate/setup
tag @s remove this

#Cast Spell Sound Effect
function classes:healer/spells/all/cast
playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 0.5 0.6

#Particles
particle minecraft:wax_off ~ ~ ~ 0.5 1 0.5 0.01 50 force
particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 0.08 50 force

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Spell Cast Notification
tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Holy Strike!","bold":true,"color":"green"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 2
