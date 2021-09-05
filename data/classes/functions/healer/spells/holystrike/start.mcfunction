#Not Enough Mana
execute if entity @s[scores={cl.Mana=..1}] run function classes:mage/mana/nomana

#Only change function line for each different spell
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players add system cl.slo_id 1
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players operation @s cl.slo_id = system cl.slo_id
execute if entity @s[scores={cl.Mana=2..}] run summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","slowcast", "holystrike"]}
execute if entity @s[scores={cl.Mana=2..}] as @e[type=marker,tag=slowcast,tag=new,tag=holystrike,limit=1] run function classes:healer/spells/holystrike/zprivate/setup
execute if entity @s[scores={cl.Mana=2..}] run tag @s remove this

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=2..}] at @s run function classes:healer/spells/all/cast
execute if entity @s[scores={cl.Mana=2..}] at @s run playsound minecraft:entity.illusioner.prepare_mirror player @a ~ ~ ~ 0.5 2

#Particles
execute if entity @s[scores={cl.Mana=2..}] at @s run particle minecraft:wax_off ~ ~ ~ 0.5 1 0.5 0.01 50 force
execute if entity @s[scores={cl.Mana=2..}] at @s run particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 0.08 50 force

#Cooldown
execute as @s[scores={cl.Mana=2..}] run scoreboard players set @s cl.Cooldown 20

#Mana Depletion
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players remove @s cl.Mana 2

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=2..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Holy Strike!","bold":true,"color":"green"}]
