### Apply Effects
## Executing as hit entity

#Display particles
particle dust 0.173 1.000 0.078 1 ~ ~ ~ 0.5 1 0.5 0.1 30 normal

#Apply effect - undead immune
execute if entity @s[type=!#classes:undead] run effect give @s minecraft:poison 15 2 true

# Make mob AI trigger for combat/fleeing
function classes:entities/vanilla/angry

#Edit tag/spellname and uncomment if you want it to end when it hits one target
execute as @e[type=marker,tag=cl.r.poison,sort=nearest,limit=1] run function classes:abilities/spells/poison/zprivate/end
