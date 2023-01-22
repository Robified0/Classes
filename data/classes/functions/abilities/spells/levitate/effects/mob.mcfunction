### Apply Effects
## Executing as hit entity
effect give @s minecraft:levitation 1 10 false
execute if entity @s[type=player] run effect give @s minecraft:slow_falling 3 0 false
particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0.1 30 normal

# Make mob AI trigger for combat/fleeing
function classes:entities/vanilla/angry

particle minecraft:cloud ~ ~ ~ 1 5 1 0.01 50 force @a

#Edit tag/spellname and uncomment if you want it to end when it hits one target
execute as @e[type=marker,tag=cl.r.levitate,sort=nearest,limit=1] run function classes:abilities/spells/levitate/zprivate/end
