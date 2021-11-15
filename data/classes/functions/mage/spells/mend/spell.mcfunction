#Not Enough Mana
execute if entity @s[scores={cl.Mana=..1}] run function classes:main/mana_system/nomana

#Give Effect
execute if entity @s[scores={cl.Mana=2..}] run effect give @s minecraft:instant_health 1 1

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=2..}] at @s run function classes:mage/spells/all/cast

#Particle Effect
execute if entity @s[scores={cl.Mana=2..}] at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=2..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Mend!","bold":true,"color":"light_purple"}]

#Cooldown
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players remove @s cl.Mana 2
