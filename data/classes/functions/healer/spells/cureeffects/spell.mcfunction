#Not Enough Mana
execute if entity @s[scores={cl.Mana=..3}] run function classes:main/mana_system/nomana

#Add score for tracking
execute if entity @s[scores={cl.Mana=4..}] at @s run summon marker ~ ~1 ~ {Tags:["CureEffects","summoned"]}
execute as @e[type=marker,tag=CureEffects,sort=nearest] at @s run function classes:operations/particles/draw/cureeffects/drawcircle
execute if entity @s[scores={cl.Mana=4..}] at @s run scoreboard players set @a[distance=..5,limit=5,sort=random] cl.e.CureEffects 900

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=4..}] at @s run function classes:healer/spells/all/cast
execute if entity @s[scores={cl.Mana=4..}] at @s run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2

#Particles
execute if entity @s[scores={cl.Mana=4..}] at @s run particle minecraft:wax_off ~ ~ ~ 0.5 1 0.5 0.01 50 force
execute if entity @s[scores={cl.Mana=4..}] at @s run particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 0.08 50 force

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=4..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Cure Effects!","bold":true,"color":"green"}]

#Cooldown
execute if entity @s[scores={cl.Mana=4..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=4..}] run scoreboard players remove @s cl.Mana 4
