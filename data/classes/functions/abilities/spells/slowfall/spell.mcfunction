#Set scoreboard timer - must match effect time below multiplied by 20.
scoreboard players set @s cl.e.SlowFall 200

#Give Effect
execute at @s run effect give @a[distance=..5] minecraft:slow_falling 10 0 false

#Tag spell type
tag @s add cl.spell.casted.air

#Cast Spell Sound Effect
function classes:main/mana_system/cast

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.401.name","bold":true,"color":"gold"},{"text":" !","color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 4
