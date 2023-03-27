##Cast Spell

#Set scoreboard timer - must match effect time below multiplied by 20.
scoreboard players set @s cl.e.BunnyHop 900

#Give Effect
effect give @s minecraft:jump_boost 45 1 false

#Tag spell type
tag @s add cl.spell.casted.air

#Cast Spell Sound Effect
function classes:main/mana_system/cast

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.403.name","bold":true,"color":"gold"},{"text":" !","color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 4
