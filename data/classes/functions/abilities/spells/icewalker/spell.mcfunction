##Executing as player casting spell (abilities/spells/icewalker/cast)

#Set score
scoreboard players set @s cl.e.IceWalker 1200

#Tag spell type
tag @s add cl.spell.casted.ice

#Cast Spell Sound Effect
function classes:main/mana_system/cast

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.306.name","bold":true,"color":"blue"},{"text":" !","color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 4
