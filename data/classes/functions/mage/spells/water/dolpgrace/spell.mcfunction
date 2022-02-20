#Not Enough Mana
execute unless entity @s[scores={cl.Mana=4..}] run function classes:main/mana_system/nomana

#Give Effect
execute if entity @s[scores={cl.Mana=4..}] run effect give @s minecraft:dolphins_grace 60 0 false

#Particle effect
execute if entity @s[scores={cl.Mana=4..}] at @s run particle minecraft:falling_water ~ ~ ~ 1 1 1 10 40 normal

#Playsound Effect
execute if entity @s[scores={cl.Mana=4..}] run playsound minecraft:block.water.ambient player @a ~ ~ ~ 1 1
execute if entity @s[scores={cl.Mana=4..}] run playsound minecraft:entity.dolphin.play player @a ~ ~ ~ 1 1

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=4..}] at @s run function classes:mage/spells/all/cast

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=4..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Dolphin's Grace!","bold":true,"color":"#0096FF"}]

#Cooldown
execute if entity @s[scores={cl.Mana=4..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=4..}] run scoreboard players remove @s cl.Mana 4

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/water/dolpgrace
