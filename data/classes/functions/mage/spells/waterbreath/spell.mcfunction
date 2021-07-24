#Not Enough Mana
execute if entity @s[scores={cl.Mana=..2}] run function classes:mage/mana/nomana

#Give Effect
execute as @s[scores={cl.Mana=3..}] run effect give @s minecraft:water_breathing 60 0 false

#Particle effect
execute as @a[scores={cl.Mana=3..}] at @s anchored eyes run particle minecraft:falling_water ~ ~ ~ 1 1 1 10 40 force
execute as @s[scores={cl.Mana=3..}] at @s run particle minecraft:witch ~ ~ ~ 0.5 1 0.5 1.2 40 force

#Playsound Effect
execute at @s[scores={cl.Mana=3..}] run playsound minecraft:block.water.ambient player @a ~ ~ ~ 0.5 1
execute at @s[scores={cl.Mana=3..}] run playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 1 1

#Cast Spell Sound Effect
execute if entity @s[scores={cl.Mana=3..}] at @s run function classes:mage/spells/all/cast

#Spell Cast Notification
execute as @s[scores={cl.Mana=3..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Water Breathing!","bold":true,"color":"#0096FF"}]

#Cooldown
execute as @s[scores={cl.Mana=3..}] run scoreboard players set @s cl.Cooldown 20

#Mana Removal
execute as @s[scores={cl.Mana=3..}] run scoreboard players remove @s cl.Mana 3
