#Give ID of marker to avoid multiple hits
scoreboard players operation @s cl.slo_id = @e[type=marker,tag=cl.r.holystrike,sort=nearest,limit=1] cl.slo_id

#Handle elemental weaknesses
execute if entity @s[type=#classes:magic/elemental/weakness/holy] run damage @s 8 minecraft:magic by @p

# Particle effect
particle minecraft:happy_villager ~ ~1 ~ 0.5 1 0.5 1 10 normal
particle minecraft:electric_spark ~ ~1 ~ 0.3 0.3 0.3 1 20 force

#Playsound
execute at @s run playsound minecraft:block.amethyst_cluster.step player @a ~ ~ ~ 1 2
