#Not Enough Mana
execute if entity @s[scores={Mana=..0}] run function classes:mage/mana/nomana

#Only change function line for each different spell
execute if entity @s[scores={Mana=1..}] run scoreboard players add system slo_id 1
execute if entity @s[scores={Mana=1..}] run scoreboard players operation @s slo_id = system slo_id
execute if entity @s[scores={Mana=1..}] run summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","slowcast", "poison"]}
execute if entity @s[scores={Mana=1..}] as @e[type=marker,tag=slowcast,tag=new,tag=poison,limit=1] run function classes:mage/spells/poison/zprivate/setup
execute if entity @s[scores={Mana=1..}] run tag @s remove this

#Cooldown
execute as @s[scores={Mana=1..}] run scoreboard players set @s cooldown 20

#Cast Spell Sound Effect
execute if entity @s[scores={Mana=1..}] at @s run playsound minecraft:entity.illusioner.cast_spell player @a[distance=..10] ~ ~ ~ 1 0.6

#Mana Depletion
execute if entity @s[scores={Mana=1..}] run scoreboard players remove @s Mana 1

#Spell Cast Notification
tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Poison!","bold":true,"color":"#03800F"}]
