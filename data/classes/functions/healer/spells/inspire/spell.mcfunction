#Not Enough Mana
execute if entity @s[scores={cl.Mana=..2}] run function classes:mage/mana/nomana

#Add score for tracking
execute if entity @s[scores={cl.Mana=3..}] at @s run scoreboard players set @a[distance=..10,limit=5,sort=nearest] cl.e.Inspire 900
execute as @e[scores={cl.e.Inspire=900}] run effect give @s minecraft:strength 45 0 false

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=3..}] at @s run function classes:healer/spells/all/cast

#Particles
execute if entity @s[scores={cl.Mana=3..}] at @s run particle minecraft:end_rod ~ ~ ~ 0.5 1 0.5 0.05 30 force
execute if entity @s[scores={cl.Mana=3..}] at @s run particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 0.08 50 force

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=3..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Inspire!","bold":true,"color":"green"}]

#Cooldown
execute if entity @s[scores={cl.Mana=3..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=3..}] run scoreboard players remove @s cl.Mana 3
