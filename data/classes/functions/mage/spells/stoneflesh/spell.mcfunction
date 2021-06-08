#Not Enough Mana
execute if entity @s[scores={Mana=..1}] run function classes:mage/mana/nomana

#Remove other Flesh spells
execute as @s[scores={Mana=2..}] run scoreboard players set @s effIronFlesh 0
execute as @s[scores={Mana=2..}] run scoreboard players set @s effDiaFlesh 0
execute as @s[scores={Mana=2..}] run tag @s remove IronFlesh
execute as @s[scores={Mana=2..}] run tag @s remove DiaFlesh

#Give Player Tag for particle effect
execute as @s[scores={Mana=2..}] run tag @s add StoneFlesh
execute as @s[scores={Mana=2..}] run scoreboard players set @s effStoneFlesh 3600

#Change base attribute
execute as @s[scores={Mana=2..}] run attribute @s minecraft:generic.armor base set 4

#Particle effect
execute as @a[scores={Mana=2..}] at @s run particle block stone ~ ~ ~ 1 1 1 10 40 normal

#Playsound Effect
execute at @s[scores={Mana=2..}] run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.2 1.5
execute at @s[scores={Mana=2..}] run playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 0.5 1.5

#Cast Spell Sound Effect
execute if entity @s[scores={Mana=5..}] at @s run function classes:mage/spells/all/cast

#Spell Cast Notification
execute as @s[scores={Mana=2..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Stone Flesh!","bold":true,"color":"#AAAAAA"}]

#Cooldown
execute as @s[scores={Mana=2..}] run scoreboard players set @s cooldown 20

#Mana Removal
execute as @s[scores={Mana=2..}] run scoreboard players remove @s Mana 2
