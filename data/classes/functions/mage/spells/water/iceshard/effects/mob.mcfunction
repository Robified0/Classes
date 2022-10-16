#Give ID of marker to avoid multiple hits
scoreboard players operation @s cl.slo_id = @e[type=marker,tag=cl.r.iceshard,sort=nearest,limit=1] cl.slo_id

# Make mob AI trigger for combat/fleeing
function classes:entities/vanilla/angry

# Apply Effects
data merge entity @s {Fire:-1}
effect give @s minecraft:slowness 3 1 false

# Handle elemental weaknesses
execute if entity @s[type=#classes:magic/elemental/weakness/water] run scoreboard players set @s cl.damageWeakness 1

# Calculate damage
function classes:operations/damage/apply

# Play sound
playsound minecraft:block.glass.break player @a ~ ~ ~ 0.25 1.2
