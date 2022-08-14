#Give ID of marker to avoid multiple hits
scoreboard players operation @s cl.slo_id = @e[type=marker,tag=cl.r.iceshard,sort=nearest,limit=1] cl.slo_id

# Detect non-angry mobs, and make them angry
execute if entity @s[predicate=classes:entities/angry] run function classes:entities/vanilla/angry

# Apply Effects
data merge entity @s {Fire:1}
execute as @s[predicate=classes:entities/angry] run function classes:entities/vanilla/angry
effect give @s minecraft:slowness 10 1 false

# Handle elemental weaknesses
execute if entity @s[type=#classes:magic/elemental/weakness/water] run scoreboard players set @s cl.damageWeakness 1

# Calculate damage
function classes:operations/damage/apply

# Play sound
playsound minecraft:block.glass.break player @a ~ ~ ~ 0.25 1.2
