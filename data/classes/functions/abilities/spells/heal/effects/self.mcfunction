#If Player is looking at ground:
effect give @s minecraft:instant_health 2 0 true

#Cast Spell Sound Effect
function classes:main/mana_system/healer/cast

#Add Cooldown
scoreboard players set @s cl.Cooldown 20

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Heal!","bold":true,"color":"green"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 2
