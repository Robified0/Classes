#Not Enough Mana
execute if entity @s[scores={cl.Mana=..1}] run function classes:main/mana_system/nomana

#Only change function line for each different spell
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players add system cl.slo_id 1
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players operation @s cl.slo_id = system cl.slo_id
execute if entity @s[scores={cl.Mana=2..}] run summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","slowcast", "bless"]}
execute if entity @s[scores={cl.Mana=2..}] as @e[type=marker,tag=slowcast,tag=new,tag=bless,limit=1] run function classes:healer/spells/bless/zprivate/setup
execute if entity @s[scores={cl.Mana=2..}] run tag @s remove this

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=2..}] at @s run function classes:healer/spells/all/cast

#Particles
execute if entity @s[scores={cl.Mana=2..}] at @s run particle minecraft:wax_off ~ ~ ~ 0.5 1 0.5 0.01 50 force
execute if entity @s[scores={cl.Mana=2..}] at @s run particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 0.08 50 force

#Cooldown
execute as @s[scores={cl.Mana=2..}] run scoreboard players set @s cl.Cooldown 20

#Spell Cast Notification
execute if entity @s[scores={cl.Mana=2..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Satiate!","bold":true,"color":"green"}]

#Mana Depletion
execute if entity @s[scores={cl.Mana=2..}] run scoreboard players remove @s cl.Mana 2