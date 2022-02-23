#Only change function line for each different spell
scoreboard players add system cl.slo_id 1
scoreboard players operation @s cl.slo_id = system cl.slo_id
summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["cl.new","cl.slowcast", "cl.torch"]}
execute as @e[type=marker,tag=cl.slowcast,tag=cl.new,tag=cl.torch,limit=1] run function classes:mage/spells/fire/torch/zprivate/setup
tag @s remove cl.this

#Cast Spell Sound Effect
function classes:mage/spells/all/cast
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.5

#Particles
particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force
particle minecraft:small_flame ~ ~ ~ 0.3 0.75 0.3 0.08 50 force

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Spell Cast Notification
tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Torch!","bold":true,"color":"red"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 2
