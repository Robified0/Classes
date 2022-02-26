## Cast spell (executing as player who has enough mana) (healer/spells/buff/fireresist/cast)

#Add score for tracking
scoreboard players set @a[distance=..10,limit=5,sort=nearest] cl.e.FireResist 900
execute as @a[scores={cl.e.FireResist=900},distance=..10,limit=5,sort=nearest] run effect give @s minecraft:fire_resistance 45 0 false

#Cast Spell Sound Effect
function classes:main/mana_system/healer/cast

#Particles
particle minecraft:wax_off ~ ~ ~ 0.5 1 0.5 0.01 50 force
particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 0.08 50 force

#Spell Cast Notification
tellraw @a[tag=cl.p.SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Fire Resist!","bold":true,"color":"green"}]

#Cooldown
scoreboard players set @s cl.Cooldown 20

#Mana Removal
scoreboard players remove @s cl.Mana 4
