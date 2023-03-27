#If Player is looking at ground:
scoreboard players set @s cl.e.CureEffects 200

#Tag spell type
tag @s add cl.spell.casted.holy

#Cast Spell Sound Effect
function classes:main/mana_system/cast

#Add Cooldown
scoreboard players set @s cl.Cooldown 20

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Prevention!","bold":true,"color":"green"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 6
