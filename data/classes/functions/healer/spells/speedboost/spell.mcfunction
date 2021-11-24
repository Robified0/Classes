#Not Enough Mana
execute if entity @s[scores={cl.Mana=..1}] run function classes:main/mana_system/nomana

#Add score for tracking
execute if entity @s[scores={cl.Mana=2..}] at @s run scoreboard players set @e[distance=..10,limit=5,sort=random] cl.e.SpeedBoost 300
execute as @e[scores={cl.e.SpeedBoost=300}] run effect give @s minecraft:speed 15 0 false

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=2..}] at @s run function classes:healer/spells/all/cast

#Particles
execute if entity @s[scores={cl.Mana=2..}] at @s run particle minecraft:wax_off ~ ~ ~ 0.5 1 0.5 0.01 50 force
execute if entity @s[scores={cl.Mana=2..}] at @s run particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 0.08 50 force

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=2..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Speed Boost!","bold":true,"color":"green"}]

#Cooldown
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players remove @s cl.Mana 2
