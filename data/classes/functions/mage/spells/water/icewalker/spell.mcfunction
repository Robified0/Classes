##Executing as player casting spell (mage/spells/water/icewalker/cast)

#Set score
 scoreboard players set @s cl.e.IceWalker 1200

#Cast Spell Sound Effect
function classes:main/mana_system/mage/cast
playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.2 2
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 10 1.5

#Particle Effect
particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force
particle dust 0.129 0.914 1.000 1 ~ ~ ~ 0.5 1 0.5 1 50 force

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Ice Walker!","bold":true,"color":"#0096FF"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 4
