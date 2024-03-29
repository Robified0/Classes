### Cast Bless on player looking down
## Executing as player looking down, casting Bless

scoreboard players set @s cl.e.Bless 600
effect give @s minecraft:absorption 600 2 false

#Tag spell type
tag @s add cl.spell.casted.holy

#Cast Spell Sound Effect
function classes:main/mana_system/cast

#Add Cooldown
scoreboard players set @s cl.Cooldown 20

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Bless!","bold":true,"color":"green"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 4
