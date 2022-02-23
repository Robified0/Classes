### Apply Effects
## Executing as hit entity

#Display particles
particle dust 0.173 1.000 0.078 1 ~ ~ ~ 0.5 1 0.5 0.1 30 normal

#Set Score, and apply loot table
scoreboard players set @s cl.HitBySpell 100
function classes:main/loot_table/main

#Apply effect - undead immune
execute if entity @s[type=!#classes:undead] run effect give @s minecraft:wither 3 3 true

#Detect non-angry mobs, and make them angry
execute if entity @s[predicate=classes:entities/angry] run function classes:entities/vanilla/angry

#Edit tag/spellname and uncomment if you want it to end when it hits one target
kill @e[type=marker,tag=cl.poison,sort=nearest,limit=1]
