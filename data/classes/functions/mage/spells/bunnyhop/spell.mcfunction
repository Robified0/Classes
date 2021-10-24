#Not Enough Mana
execute if entity @s[scores={cl.Mana=..2}] run function classes:main/mana_system/nomana

#Give Player Tag for particle effect
execute as @s[scores={cl.Mana=3..}] run tag @s add BunnyHop

execute as @s[scores={cl.Mana=3..}] run scoreboard players set @s cl.e.BunnyHop 400

#Give Effect
execute as @s[scores={cl.Mana=3..}] run effect give @s minecraft:jump_boost 45 1 true

#Particles
execute as @a[scores={cl.Mana=3..}] at @s run particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 40 normal
execute if entity @s[scores={cl.Mana=3..}] at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=3..}] at @s run function classes:mage/spells/all/cast
execute if entity @s[scores={cl.Mana=3..}] at @s run playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 1 1

#Spell Cast Notification
execute as @s[scores={cl.Mana=3..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Bunny Hop!","bold":true,"color":"#FFFF80"}]

#Cooldown
execute as @s[scores={cl.Mana=3..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute as @s[scores={cl.Mana=3..}] run scoreboard players remove @s cl.Mana 3
