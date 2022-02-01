#Not Enough Mana
execute if entity @s[scores={cl.Mana=..2}] run function classes:main/mana_system/nomana

#Give Player Tag for particle effect
execute if entity @s[scores={cl.Mana=3..}] run tag @s add SlowFall

execute if entity @s[scores={cl.Mana=3..}] run scoreboard players set @s cl.e.SlowFall 900

#Give Effect
execute if entity @s[scores={cl.Mana=3..}] run effect give @s minecraft:slow_falling 45 0 false

#Particle effect
execute if entity @s[scores={cl.Mana=3..}] at @s run particle minecraft:cloud ~ ~ ~ 0.5 0.75 0.5 0.25 100 force

#Playsound Effect
execute if entity @s[scores={cl.Mana=3..}] at @s run playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 0.5 1

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=3..}] at @s run function classes:mage/spells/all/cast

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=3..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Slow Fall!","bold":true,"color":"#FFFF80"}]

#Cooldown
execute if entity @s[scores={cl.Mana=3..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=3..}] run scoreboard players remove @s cl.Mana 3

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/air/slowfall