#Remove other Flesh spells
function classes:mage/system/armorspells

#Give Player Tag for particle effect
scoreboard players set @s cl.e.MageArmor 300

#Particle effect
particle witch ~ ~ ~ 1 1 1 10 40 normal

#Playsound Effect
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.2 1.5
playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 0.5 1.2

#Cast Spell Sound Effect
function classes:main/mana_system/mage/cast

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Mage Armor!","bold":true,"color":"light_purple"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 8

#Change base attribute
execute as @s run attribute @s minecraft:generic.armor base set 4
