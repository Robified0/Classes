#Not Enough Mana
execute if entity @s[scores={cl.Mana=..3}] run function classes:main/mana_system/nomana

#Give Effect
execute as @s[scores={cl.Mana=4..}] run tag @s add FireShield

#Set time limit for spell Effect
execute as @s[tag=FireShield] run scoreboard players set @s cl.e.FireShield 400

#Give Effect
execute as @s[scores={cl.Mana=4..}] run effect give @s minecraft:fire_resistance 20 0 false

#Particle effect
execute as @a[scores={cl.Mana=4..}] at @s run particle flame ~ ~ ~ 0.5 0.5 0.5 0.03 100 normal

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=4..}] at @s run function classes:mage/spells/all/cast
execute if entity @s[scores={cl.Mana=4..}] at @s run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.08

#Spell Cast Notification
execute as @s[scores={cl.Mana=4..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Fire Shield!","bold":true,"color":"#0096FF"}]

#Cooldown
execute as @s[scores={cl.Mana=4..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute as @s[scores={cl.Mana=4..}] run scoreboard players remove @s cl.Mana 4
