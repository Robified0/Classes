### calculations based on a 0.5 raycast stepsize.
### if you change raycast stepsize, change *0.5 accordingly
# how many half blocks per step (4*0.5) = 2 blocks per tick
execute unless entity @s[scores={cl.Mana=1..},x_rotation=87..90] run scoreboard players set dst_per cl.slowcast 4
# how many half blocks to travel (24*0.5) = 12 blocks
execute unless entity @s[scores={cl.Mana=1..},x_rotation=87..90] run scoreboard players set dst cl.slowcast 48

execute unless entity @s[scores={cl.Mana=1..},x_rotation=87..90] positioned ~ ~1.45 ~ run function classes:mage/spells/levitate/start

#If Player is looking at ground:
execute if entity @s[scores={cl.Mana=1..},x_rotation=87..90,distance=..1] run effect give @s minecraft:levitation 1 10 true
execute if entity @s[scores={cl.Mana=1..},x_rotation=87..90,distance=..1] run tag @s add Levitate
#Play sound effect - use here when needing repeat
execute if entity @s[scores={cl.Mana=1..},x_rotation=87..90,distance=..1] at @s run playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 1
#Particles
execute if entity @s[scores={cl.Mana=1..},x_rotation=87..90,distance=..1] at @s run particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 40 normal
execute if entity @s[scores={cl.Mana=1..},x_rotation=87..90,distance=..1] at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force
#Mana Depletion
execute if entity @s[scores={cl.Mana=1..},x_rotation=87..90,distance=..1] run scoreboard players remove @s cl.Mana 1
#Spell Cast Notification
tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Levitate!","bold":true,"color":"#FFFF80"}]
