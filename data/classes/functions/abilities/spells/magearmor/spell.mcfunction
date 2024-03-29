#Remove other Flesh spells
function classes:abilities/effects/armorspells

#Give Player Tag for particle effect
scoreboard players set @s cl.e.MageArmor 300

#Tag spell type
tag @s add cl.spell.casted.magic

#Extra Sound Effect
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.2 1.5
playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 0.5 1.2

#Cast Spell Sound Effect
function classes:main/mana_system/cast

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"translate":"chat.classes.spell.cast","color":"green"},{"translate":"spell.classes.605.name","bold":true,"color":"light_purple"},{"text":" !","color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 2

#Change base attribute
execute as @s run attribute @s minecraft:generic.armor base set 4
