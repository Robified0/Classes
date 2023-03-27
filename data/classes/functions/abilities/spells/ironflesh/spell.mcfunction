#Remove other Flesh spells
function classes:abilities/effects/armorspells

#Give Player score for particle effect
scoreboard players set @s cl.e.IronFlesh 300

#Change base attribute
attribute @s minecraft:generic.armor base set 8

#Particle effect
particle block iron_block ~ ~ ~ 1 1 1 10 40 normal

#Tag spell type
tag @s add cl.spell.casted.earth

#Cast Spell Sound Effect
function classes:main/mana_system/cast

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.501.name","bold":true,"color":"dark_green"},{"text":" !","color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 4
