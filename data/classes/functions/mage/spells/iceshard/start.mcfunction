#Not Enough Mana
execute if entity @s[scores={Mana=..1}] run function classes:mage/mana/nomana

#Only change function line for each different spell
execute if entity @s[scores={Mana=2..}] run scoreboard players add system slo_id 1
execute if entity @s[scores={Mana=2..}] run scoreboard players operation @s slo_id = system slo_id
execute if entity @s[scores={Mana=2..}] run summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","slowcast", "iceshard"]}
execute if entity @s[scores={Mana=2..}] as @e[type=marker,tag=slowcast,tag=new,tag=iceshard,limit=1] run function classes:mage/spells/iceshard/zprivate/setup
execute if entity @s[scores={Mana=2..}] run tag @s remove this

#Cooldown
execute as @s[scores={Mana=2..}] run scoreboard players set @s cooldown 20

#Cast Spell Sound Effect
execute if entity @s[scores={Mana=2..}] at @s run playsound minecraft:entity.illusioner.cast_spell player @a[distance=..10] ~ ~ ~ 1 0.6

#Particles
execute if entity @s[scores={Mana=2..}] at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force
execute if entity @s[scores={Mana=2..}] at @s run particle dust 0.129 0.914 1.000 1 ~ ~ ~ 0.5 1 0.5 1 50 force

#Mana Depletion
execute if entity @s[scores={Mana=2..}] run scoreboard players remove @s Mana 2

#Spell Cast Notification
execute if entity @s[scores={Mana=2..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Ice Shard!","bold":true,"color":"#0096FF"}]