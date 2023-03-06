#Give ID of marker to avoid multiple hits
scoreboard players operation @s cl.slo_id = @e[type=marker,tag=cl.r.magicmissile,sort=nearest,limit=1] cl.slo_id

#Deal damage
damage @s 3 minecraft:magic by @p

# Particle effect
particle minecraft:firework ~ ~1 ~ 0.1 0.1 0.1 0.1 30 force

# Playsound
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 0.5 1
