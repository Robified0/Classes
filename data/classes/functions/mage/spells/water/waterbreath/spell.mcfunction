#Not Enough Mana
execute unless entity @s[scores={cl.Mana=4..}] run function classes:main/mana_system/nomana

#Give Effect
execute if entity @s[scores={cl.Mana=4..}] run effect give @s minecraft:water_breathing 60 0 false

#Particle effect
execute if entity @a[scores={cl.Mana=4..}] at @s anchored eyes run particle minecraft:falling_water ~ ~ ~ 1 1 1 10 40 force
execute if entity @s[scores={cl.Mana=4..}] at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force

#Playsound Effect
execute if entity @s[scores={cl.Mana=4..}] at @s run playsound minecraft:block.water.ambient player @a ~ ~ ~ 0.5 1
execute if entity @s[scores={cl.Mana=4..}] at @s run playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 1 1

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=4..}] at @s run function classes:mage/spells/all/cast

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=4..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Water Breathing!","bold":true,"color":"#0096FF"}]

#Cooldown
execute if entity @s[scores={cl.Mana=4..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=4..}] run scoreboard players remove @s cl.Mana 4

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/water/waterbreath
