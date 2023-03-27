#Set scoreboard timer - must match effect time below multiplied by 20.
scoreboard players set @s cl.e.TailWind 200

#Give Effect
attribute @s minecraft:generic.movement_speed modifier add 02eaa265-68d9-4906-8095-6ea88b0e906d TailWind .01 add

#Tag spell type
tag @s add cl.spell.casted.air

#Cast Spell Sound Effect
function classes:main/mana_system/cast

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.402.name","bold":true,"color":"gold"},{"text":" !","color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 4
