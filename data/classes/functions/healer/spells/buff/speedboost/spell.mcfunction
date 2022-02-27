#Add score for tracking
scoreboard players set @a[distance=..10,limit=5,sort=random] cl.e.SpeedBoost 300
execute as @a[scores={cl.e.SpeedBoost=300}] run effect give @s minecraft:speed 15 0 false

#Cast Spell Sound Effect
function classes:main/mana_system/healer/cast

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Speed Boost!","bold":true,"color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 4
