#Give Effect
effect give @s minecraft:regeneration 5 1

#Cast Spell Sound Effect
function classes:main/mana_system/mage/cast
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 10 1

#Particle Effect
particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.604.name","bold":true,"color":"light_purple"},{"text":" !","color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 2
