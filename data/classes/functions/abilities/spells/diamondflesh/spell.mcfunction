#Remove other Flesh spells
function classes:abilities/effects/armorspells

#Give Player score for particle effect
scoreboard players set @s cl.e.DiaFlesh 300

#Change base attribute
attribute @s minecraft:generic.armor base set 16

#Particle effect
particle block diamond_block ~ ~ ~ 1 1 1 10 40 normal

#Tag spell type
tag @s add cl.spell.casted.earth

#Cast Spell Sound Effect
function classes:main/mana_system/cast

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.503.name","bold":true,"color":"dark_green"},{"text":" !","color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 6
