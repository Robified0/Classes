#Not Enough Mana
execute if entity @s[scores={Mana=..2}] run function classes:mage/mana/nomana

#Remove other Flesh spells
execute as @s[scores={Mana=3..}] run scoreboard players set @s effStoneFlesh 0
execute as @s[scores={Mana=3..}] run scoreboard players set @s effDiaFlesh 0
execute as @s[scores={Mana=3..}] run tag @s remove StoneFlesh
execute as @s[scores={Mana=3..}] run tag @s remove DiaFlesh

#Give Player Tag for particle effect
execute as @s[scores={Mana=3..}] run tag @s add IronFlesh
execute as @s[scores={Mana=3..}] run scoreboard players set @s effIronFlesh 3600

#Change base attribute
execute as @s[scores={Mana=3..}] run attribute @s minecraft:generic.armor base set 8

#Particle effect
execute as @a[scores={Mana=3..}] at @s run particle block iron_block ~ ~ ~ 1 1 1 10 40 normal

#Playsound Effect
execute at @s[scores={Mana=3..}] run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.2 1.5
execute at @s[scores={Mana=3..}] run playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 0.5 1.5

#Cast Spell Sound Effect
execute if entity @s[scores={Mana=5..}] at @s run function classes:mage/spells/all/cast

#Spell Cast Notification
execute as @s[scores={Mana=3..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Iron Flesh!","bold":true,"color":"#AAAAAA"}]

#Cooldown
execute as @s[scores={Mana=3..}] run scoreboard players set @s cooldown 20

#Mana Removal
execute as @s[scores={Mana=3..}] run scoreboard players remove @s Mana 3
