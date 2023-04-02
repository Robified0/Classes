#Give ID of marker to avoid multiple hits
scoreboard players operation @s cl.slo_id = @e[type=marker,tag=cl.r.waterstrike,sort=nearest,limit=1] cl.slo_id

# Apply Effects
data merge entity @s {Fire:-1}

#Handle elemental weaknesses
execute if entity @s[type=#classes:magic/elemental/weakness/water] run damage @s 8 minecraft:magic by @p
execute unless entity @s[type=#classes:magic/elemental/weakness/water] run damage @s 4 minecraft:magic by @p

# Particle effect
particle minecraft:falling_water ~ ~ ~ 1 1 1 10 30 normal

#Playsound
playsound minecraft:entity.fish.swim player @a ~ ~ ~ 0.4 0.7
