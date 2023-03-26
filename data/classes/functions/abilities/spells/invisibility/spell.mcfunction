#Give Effect
effect give @s minecraft:invisibility 20 1 false

#Cast Spell Sound Effect
function classes:main/mana_system/mage/cast

#Particle Effect
particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.601.name","bold":true,"color":"light_purple"},{"text":" !","color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 2
