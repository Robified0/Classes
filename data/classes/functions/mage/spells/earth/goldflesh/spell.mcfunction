#Remove other Flesh spells
function classes:mage/system/armorspells

#Give Player score for particle effect
scoreboard players set @s cl.e.GoldFlesh 12000

#Change base attribute
attribute @s minecraft:generic.armor base set 6

#Particle effect
particle block gold_block ~ ~ ~ 1 1 1 10 40 normal

#Playsound Effect
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.2 1.5
playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 0.5 1.2

#Cast Spell Sound Effect
function classes:main/mana_system/mage/cast

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Gold Flesh!","bold":true,"color":"dark_green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 8
