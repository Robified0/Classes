#Not Enough Mana
execute unless entity @s[scores={cl.Mana=2..}] run function classes:main/mana_system/nomana

#Give Effect
execute if entity @s[scores={cl.Mana=2..}] run effect give @s minecraft:invisibility 20 1 false

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=2..}] at @s run function classes:mage/spells/all/cast

#Particle Effect
execute if entity @s[scores={cl.Mana=2..}] at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=2..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" cast","color":"green"},{"text":" Invisibility!","bold":true,"color":"light_purple"}]

#Cooldown
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players remove @s cl.Mana 2

#Modify item (for spell versioning)
item modify entity @s weapon.mainhand classes:mage/spells/magic/invisibility
