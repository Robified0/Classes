#Only change function line for each different spell
scoreboard players add #system cl.slo_id 1
scoreboard players operation @s cl.slo_id = #system cl.slo_id
summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["cl.r.new","cl.r.slowcast", "cl.r.magicmissile"]}
execute as @e[type=marker,tag=cl.r.slowcast,tag=cl.r.new,tag=cl.r.magicmissile,limit=1] run function classes:abilities/spells/magicmissile/zprivate/setup
tag @s remove cl.r.this

#Tag spell type
tag @s add cl.spell.casted.magic

#Cast Spell Sound Effect
function classes:main/mana_system/cast

#Extra Sound effects
playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 0.75 1

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.606.name","bold":true,"color":"light_purple"},{"text":" !","color":"green"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 1
