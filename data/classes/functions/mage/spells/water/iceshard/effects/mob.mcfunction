### Apply Effects
## Executing as hit entity

#Set Score, and apply loot table
scoreboard players set @s cl.HitBySpell 100
function classes:main/loot_table/main

#Play sound
playsound minecraft:block.glass.break player @a ~ ~ ~ 0.25 1.2

#Give effects - fireproof mobs take more damage
effect give @s minecraft:slowness 10 1 false
execute if entity @s[type=!#classes:undead,type=!#classes:fireproof] run effect give @s minecraft:instant_damage 1 0 true
execute if entity @s[type=#classes:undead,type=!#classes:fireproof] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[type=#classes:fireproof,type=!#classes:undead] run effect give @s minecraft:instant_damage 1 1 true
execute if entity @s[type=#classes:fireproof,type=#classes:undead] run effect give @s minecraft:instant_health 1 1 true

#Detect non-angry mobs, and make them angry
execute if entity @s[predicate=classes:entities/angry] run function classes:entities/vanilla/angry

#Edit tag/spellname and uncomment if you want it to end when it hits one target
execute as @e[type=marker,tag=cl.r.iceshard,sort=nearest,limit=1] run function classes:mage/spells/water/iceshard/zprivate/end
