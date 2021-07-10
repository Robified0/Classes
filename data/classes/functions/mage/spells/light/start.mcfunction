#Not Enough Mana
execute if entity @s[scores={cl.Mana=0}] run function classes:mage/mana/nomana

#Only change function line for each different spell
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players add system cl.slo_id 1
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players operation @s cl.slo_id = system cl.slo_id
execute if entity @s[scores={cl.Mana=1..}] run summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","slowcast", "light"]}
execute if entity @s[scores={cl.Mana=1..}] as @e[type=marker,tag=slowcast,tag=new,tag=light,limit=1] run function classes:mage/spells/light/zprivate/setup
execute if entity @s[scores={cl.Mana=1..}] run tag @s remove this

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=5..}] at @s run function classes:mage/spells/all/cast

#Particles
execute if entity @s[scores={cl.Mana=1..}] at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force
execute if entity @s[scores={cl.Mana=1..}] at @s run particle minecraft:end_rod ~ ~0.5 ~ 0.3 1 0.3 0.03 50 force

#Cooldown
execute as @s[scores={cl.Mana=1..}] run scoreboard players set @s cl.Cooldown 20

#Mana Depletion
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players remove @s cl.Mana 1

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=1..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Light!","bold":true,"color":"#FFFFFF"}]
