#Not Enough Mana
execute if entity @s[scores={Mana=..2}] run function classes:mage/mana/nomana

#Give Player Tag for particle effect
execute as @s[scores={Mana=3..}] run tag @s add SlowFall

execute as @s[scores={Mana=3..}] run scoreboard players set @s effSlowFall 900

#Give Effect
execute as @s[scores={Mana=3..}] run effect give @s minecraft:slow_falling 45 0 true

#Particle effect
execute as @a[scores={Mana=3..}] at @s run particle minecraft:cloud ~ ~ ~ 1 1 1 10 40 normal

#Playsound Effect
execute at @s[scores={Mana=3..}] run playsound minecraft:entity.horse.breathe player @a[distance=..10] ~ ~ ~ 1 1

#Cast Spell Sound Effect
execute if entity @s[scores={Mana=3..}] at @s run playsound minecraft:entity.illusioner.cast_spell player @a[distance=..10] ~ ~ ~ 1 0.6

#Spell Cast Notification
execute as @s[scores={Mana=3..}] run tellraw @s[tag=SpellNotify,distance=..40] ["",{"selector":"@s"},{"text":" casted","color":"green"},{"text":" Slow Fall!","bold":true,"color":"#FFFF80"}]

#Cooldown
execute as @s[scores={Mana=3..}] run scoreboard players set @s cooldown 20

#Mana Removal
execute as @s[scores={Mana=3..}] run scoreboard players remove @s Mana 3
