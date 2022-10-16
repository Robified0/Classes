#Give ID of marker to avoid multiple hits
scoreboard players operation @s cl.slo_id = @e[type=marker,tag=cl.r.torch,sort=nearest,limit=1] cl.slo_id

#Apply Effects
data merge entity @s {Fire:100}
execute as @s[type=creeper] run function classes:entities/vanilla/creeper/fire

# Make mob AI trigger for combat/fleeing
function classes:entities/vanilla/angry

#Handle elemental weaknesses
execute if entity @s[type=#classes:magic/elemental/weakness/water] run scoreboard players set @s cl.damageWeakness 1

#Handle damage now
function classes:operations/damage/apply

# Particle effect
particle minecraft:small_flame ~ ~ ~ 0.5 0.5 0.5 0.01 30 normal

#Playsound
playsound minecraft:entity.blaze.burn player @a ~ ~ ~ 0.5 1.3
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 0.5 1
