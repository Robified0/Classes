## Cast spell (executing as player who has enough mana) (healer/spells/buff/fireresist/cast)

#Add score for tracking
scoreboard players set @a[distance=..10,limit=5,sort=nearest] cl.e.FireResist 1200
execute as @a[scores={cl.e.FireResist=6000},distance=..10,limit=5,sort=nearest] run effect give @s minecraft:fire_resistance 60 0 false

#Cast Spell Sound Effect
function classes:main/mana_system/healer/cast

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Fire Resist!","bold":true,"color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 6
