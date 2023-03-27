#Give Effect
effect give @s minecraft:regeneration 5 1

#Tag spell type
tag @s add cl.spell.casted.magic

#Cast Spell Sound Effect
function classes:main/mana_system/cast

#Extra sound ActiveEffects
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 10 1

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.604.name","bold":true,"color":"light_purple"},{"text":" !","color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 2
