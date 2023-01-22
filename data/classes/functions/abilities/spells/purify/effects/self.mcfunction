#If Player is looking at ground:
#Cure negative effects
effect clear @s blindness
effect clear @s poison
effect clear @s hunger
effect clear @s levitation
effect clear @s mining_fatigue
effect clear @s nausea
effect clear @s unluck
effect clear @s wither
effect clear @s slowness

#Cast Spell Sound Effect
function classes:main/mana_system/healer/cast

#Add Cooldown
scoreboard players set @s cl.Cooldown 20

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Purify!","bold":true,"color":"green"}]

#Mana Depletion
scoreboard players remove @s cl.Mana 2
