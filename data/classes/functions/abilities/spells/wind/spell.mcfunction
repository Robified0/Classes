##Cast Spell
particle minecraft:cloud ~ ~ ~ 0 0 0 1 200 force

#Play Sound
playsound classes:mage.spell.wind player @a ~ ~ ~ 1 1

#Give player tag
tag @s add cl.e.Wind

##Give Effect
execute as @e[type=!#classes:nontarget,sort=nearest,distance=..10] at @s run function classes:abilities/spells/wind/effect/mob

#Remove tag
tag @s remove cl.e.Wind

#Tag spell type
tag @s add cl.spell.casted.air

#Cast Spell Sound Effect
function classes:main/mana_system/cast

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.404.name","bold":true,"color":"gold"},{"text":" !","color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 2
