#Not Enough Mana
execute if entity @s[scores={Mana=..4}] run function classes:mage/mana/nomana

#Summon AEC
execute as @s[scores={Mana=5..}] at @s run summon marker ~ ~1 ~ {Tags:["WindWard","summoned"]}
execute as @s[scores={Mana=5..}] at @s run summon marker ~ ~1 ~ {Tags:["WindWardSphere","sphere","ball2"]}
execute as @s[scores={Mana=5..}] at @s run summon marker ~ ~1 ~ {Tags:["WindWardSphere","sphere","ball1"]}
execute as @s[scores={Mana=5..}] run scoreboard players set @e[type=marker,tag=WindWard,limit=1,sort=nearest] summonCount 400

#Particles
execute as @a[scores={Mana=5..}] at @s run particle minecraft:cloud ~ ~ ~ 1 1 1 10 40 normal
execute if entity @s[scores={Mana=5..}] at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force

#Cast Spell Sound Effect
execute if entity @s[scores={Mana=5..}] at @s run function classes:mage/spells/all/cast
execute at @s[scores={Mana=5..}] run playsound minecraft:entity.horse.breathe player @a ~ ~ ~ 0.5 1

#Spell Cast Notification
execute as @s[scores={Mana=5..}] run tellraw @a[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Wind Ward!","bold":true,"color":"#FFFF80"}]

#Cooldown
execute as @s[scores={Mana=5..}] run scoreboard players set @s cooldown 20

#Mana Removal
execute as @s[scores={Mana=5..}] run scoreboard players remove @s Mana 5
