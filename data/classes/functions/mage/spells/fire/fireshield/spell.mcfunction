#Set scoreboard timer - must match effect time below multiplied by 20.
scoreboard players set @s cl.e.FireShield 900

#Give Effect
effect give @s minecraft:fire_resistance 45 0 false

#Cast Spell Sound Effect
function classes:main/mana_system/mage/cast
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.08

#Particle effect
particle flame ~ ~ ~ 0.5 0.5 0.5 0.03 100 normal

#Spell Cast Notification
tellraw @a[tag=cl.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Fire Shield!","bold":true,"color":"#FF3034"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 4
