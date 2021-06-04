#Not Enough Mana
execute if entity @s[scores={Mana=..4}] run function classes:mage/mana/nomana

#Remove other Flesh spells
execute as @s[scores={Mana=5..}] run scoreboard players set @s effStoneFlesh 0
execute as @s[scores={Mana=5..}] run scoreboard players set @s effIronFlesh 0
execute as @s[scores={Mana=5..}] run tag @s remove StoneFlesh
execute as @s[scores={Mana=5..}] run tag @s remove IronFlesh

#Give Player Tag for particle effect
execute as @s[scores={Mana=5..}] run tag @s add DiaFlesh
execute as @s[scores={Mana=5..}] run scoreboard players set @s effDiaFlesh 3600

#Change base attribute
execute as @s[scores={Mana=5..}] run attribute @s minecraft:generic.armor base set 12

#Particle effect
execute as @s[scores={Mana=5..}] at @s run particle block diamond_block ~ ~ ~ 1 1 1 10 40 normal
execute if entity @s[scores={Mana=5..}] at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force

#Playsound Effect
execute at @s[scores={Mana=5..}] run playsound minecraft:block.beacon.power_select player @a[distance=..10] ~ ~ ~ 0.2 1.5
execute at @s[scores={Mana=5..}] run playsound minecraft:entity.zombie_villager.cure player @a[distance=..10] ~ ~ ~ 0.5 1.5

#Spell Sound Effect
execute if entity @s[scores={Mana=5..}] at @s run playsound minecraft:entity.illusioner.cast_spell player @a[distance=..10] ~ ~ ~ 1 0.6

#Spell Cast Notification
execute as @s[scores={Mana=5..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Diamond Flesh!","bold":true,"color":"#AAAAAA"}]

#Cooldown
execute as @s[scores={Mana=5..}] run scoreboard players set @s cooldown 20

#Mana Removal
execute as @s[scores={Mana=5..}] run scoreboard players remove @s Mana 5
