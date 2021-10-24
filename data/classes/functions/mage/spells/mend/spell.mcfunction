#Full health
execute if entity @s[scores={cl.health=14}] run title @s times 20 100 20
execute if entity @s[scores={cl.health=14}] run title @s subtitle {"text":"You have full health.","color":"red"}
execute if entity @s[scores={cl.health=14}] run title @s title {"text":""}

#Not Enough Mana
execute if entity @s[scores={cl.Mana=..1,cl.health=..13}] run function classes:main/mana_system/nomana

#Give Effect
execute if entity @s[scores={cl.Mana=2..,cl.health=..13}] run effect give @s minecraft:instant_health 1 1

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=2..,cl.health=..13}] at @s run function classes:mage/spells/all/cast

#Particle Effect
execute if entity @s[scores={cl.Mana=2..,cl.health=..13}] at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=2..,cl.health=..13}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Mend!","bold":true,"color":"light_purple"}]

#Cooldown
execute if entity @s[scores={cl.Mana=2..,cl.health=..13}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute if entity @s[scores={cl.Mana=2..,cl.health=..13}] run scoreboard players remove @s cl.Mana 2
