#Give ID of marker to avoid multiple hits
scoreboard players operation @s cl.slo_id = @e[type=marker,tag=cl.r.waterstrike,sort=nearest,limit=1] cl.slo_id

# Make mob AI trigger for combat/fleeing
function classes:entities/vanilla/angry

# Apply Effects
data merge entity @s {Fire:-1}

#Handle elemental weaknesses
execute if entity @s[type=#classes:magic/elemental/weakness/water] run scoreboard players set @s cl.damageWeakness 1

# Calculate damage
function classes:operations/damage/apply

# Particle effect
particle minecraft:falling_water ~ ~ ~ 1 1 1 10 30 normal

#Playsound
playsound minecraft:entity.fish.swim player @a ~ ~ ~ 0.4 0.7
