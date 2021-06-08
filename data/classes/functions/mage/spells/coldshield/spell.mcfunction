#Not Enough Mana
execute if entity @s[scores={Mana=..3}] run function classes:mage/mana/nomana

#Give Effect
execute as @s[scores={Mana=4..}] run tag @s add ColdShield

#Set time limit for spell Effect
execute as @s[tag=ColdShield] run scoreboard players set @s effColdShield 400

#Give Effect
execute as @s[scores={Mana=4..}] run effect give @s minecraft:fire_resistance 20 0 true

#Particle effect
execute as @a[scores={Mana=4..}] at @s run particle dust 0.129 0.914 1.000 1 ~ ~ ~ 1.5 1.5 1.5 1 100 normal

#Playsound Effect
execute at @s[scores={Mana=4..}] run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.8 2
execute at @s[scores={Mana=4..}] run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 5 1.5

#Cast Spell Sound Effect
execute if entity @s[scores={Mana=5..}] at @s run function classes:mage/spells/all/cast

#Spell Cast Notification
execute as @s[scores={Mana=4..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Cold Shield!","bold":true,"color":"#0096FF"}]

#Cooldown
execute as @s[scores={Mana=4..}] run scoreboard players set @s cooldown 20

#Mana Removal
execute as @s[scores={Mana=4..}] run scoreboard players remove @s Mana 4
