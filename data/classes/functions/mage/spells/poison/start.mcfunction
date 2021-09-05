#Not Enough Mana
execute if entity @s[scores={cl.Mana=..0}] run function classes:main/mana_system/nomana

#Only change function line for each different spell
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players add system cl.slo_id 1
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players operation @s cl.slo_id = system cl.slo_id
execute if entity @s[scores={cl.Mana=1..}] run summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","slowcast", "poison"]}
execute if entity @s[scores={cl.Mana=1..}] as @e[type=marker,tag=slowcast,tag=new,tag=poison,limit=1] run function classes:mage/spells/poison/zprivate/setup
execute if entity @s[scores={cl.Mana=1..}] run tag @s remove this

#Cooldown
execute as @s[scores={cl.Mana=1..}] run scoreboard players set @s cl.Cooldown 20

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=1..}] at @s run function classes:mage/spells/all/cast

#Spell Cast Notification
tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Poison!","bold":true,"color":"#03800F"}]

#Mana Depletion
execute if entity @s[scores={cl.Mana=1..}] run scoreboard players remove @s cl.Mana 1
