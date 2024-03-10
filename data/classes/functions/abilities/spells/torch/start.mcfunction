#Only change function line for each different spell
scoreboard players add #system cl.slo_id 1
scoreboard players operation @s cl.slo_id = #system cl.slo_id
summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["cl.r.new","cl.r.slowcast", "cl.r.torch"]}
execute as @e[type=marker,tag=cl.r.slowcast,tag=cl.r.new,tag=cl.r.torch,limit=1] run function classes:abilities/spells/torch/zprivate/setup
tag @s remove cl.r.this

#Tag spell type
tag @s add cl.spell.casted.fire

#Cast Spell Sound Effect
function classes:main/mana_system/cast

#Particles
particle minecraft:small_flame ~ ~ ~ 0.3 0.75 0.3 0.08 50 force

#Cooldown
scoreboard players set @s cl.Cooldown 20
tag @s add cl.Cooldown.20

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.200.name","bold":true,"color":"#FF3034"},{"text":" !","color":"green"}]

#Mana Depletion
xp add @s -5 points
