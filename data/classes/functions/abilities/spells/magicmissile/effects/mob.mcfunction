#Give ID of marker to avoid multiple hits
scoreboard players operation @s cl.slo_id = @e[type=marker,tag=cl.r.magicmissile,sort=nearest,limit=1] cl.slo_id

# Make mob AI trigger for combat/fleeing
function classes:entities/vanilla/angry

# Calculate damage
function classes:operations/damage/apply

# Particle effect
particle minecraft:firework ~ ~1 ~ 0.1 0.1 0.1 0.1 30 force

# Playsound
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 0.5 1
