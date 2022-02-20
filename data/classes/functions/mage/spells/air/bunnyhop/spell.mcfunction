#Not Enough Mana
execute unless entity @s[scores={cl.Mana=4..}] run function classes:main/mana_system/nomana

#Give Player Tag for particle effect
execute if entity @s[scores={cl.Mana=4..}] run tag @s add BunnyHop

execute if entity @s[scores={cl.Mana=4..}] run scoreboard players set @s cl.e.BunnyHop 400

#Give Effect
execute if entity @s[scores={cl.Mana=4..}] run effect give @s minecraft:jump_boost 45 1 false

#Particles
execute if entity @s[scores={cl.Mana=4..}] at @s run particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 40 normal
execute if entity @s[scores={cl.Mana=4..}] at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=4..}] at @s run function classes:mage/spells/all/cast
execute if entity @s[scores={cl.Mana=4..}] at @s run playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 1 1

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=4..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Bunny Hop!","bold":true,"color":"#FFFF80"}]

#Cooldown
execute if entity @s[scores={cl.Mana=4..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=4..}] run scoreboard players remove @s cl.Mana 4

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/air/bunnyhop
