### Cast Levitate on player looking down
## Executing as player looking down, casting Levitate

#Give effect
effect give @s minecraft:levitation 1 10 false
effect give @s minecraft:slow_falling 3 0 false

#Tag spell type
tag @s add cl.spell.casted.air

#Cast Spell Sound Effect
function classes:main/mana_system/cast

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Levitate!","bold":true,"color":"#FFFF80"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 4
