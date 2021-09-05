### calculations based on a 0.5 raycast stepsize.
### if you change raycast stepsize, change *0.5 accordingly
# how many half blocks per step (4*0.5) = 2 blocks per tick
execute unless entity @s[scores={cl.Mana=1..},x_rotation=87..90] run scoreboard players set dst_per cl.slowcast 4
# how many half blocks to travel (24*0.5) = 12 blocks
execute unless entity @s[scores={cl.Mana=1..},x_rotation=87..90] run scoreboard players set dst cl.slowcast 48
#Start raycast if caster isn't looking down.
execute unless entity @s[scores={cl.Mana=1..},x_rotation=87..90] positioned ~ ~1.45 ~ run function classes:healer/spells/heal/start

#If Player is looking at ground:
execute if entity @s[scores={cl.Mana=1..},x_rotation=87..90] run effect give @s minecraft:instant_health 2 0 true

#Play sound effect.
execute if entity @s[scores={cl.Mana=1..},x_rotation=87..90] at @s run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 2 1.5

#Particles
execute if entity @s[scores={cl.Mana=1..},x_rotation=87..90] at @s run particle minecraft:wax_off ~ ~ ~ 0.5 1 0.5 0.01 50 force
execute if entity @s[scores={cl.Mana=1..},x_rotation=87..90] at @s run particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 0.08 50 force

#Add Cooldown
execute if entity @s[scores={cl.Mana=1..},x_rotation=87..90] run scoreboard players set @s cl.Cooldown 20

#Mana Depletion
execute if entity @s[scores={cl.Mana=1..},x_rotation=87..90] run scoreboard players remove @s cl.Mana 1

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=1..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Heal!","bold":true,"color":"green"}]
