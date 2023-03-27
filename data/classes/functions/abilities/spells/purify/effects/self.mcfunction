#If Player is looking at ground:
#Cure negative effects
effect clear @s minecraft:blindness
effect clear @s minecraft:poison
effect clear @s minecraft:hunger
effect clear @s minecraft:levitation
effect clear @s minecraft:mining_fatigue
effect clear @s minecraft:nausea
effect clear @s minecraft:unluck
effect clear @s minecraft:wither
effect clear @s minecraft:weakness
effect clear @s minecraft:slowness

#Tag spell type
tag @s add cl.spell.casted.holy

#Cast Spell Sound Effect
function classes:main/mana_system/cast

#Add Cooldown
scoreboard players set @s cl.Cooldown 20

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Purify!","bold":true,"color":"green"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 2
