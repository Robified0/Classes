#Give ID of marker to avoid multiple hits
scoreboard players operation @s cl.slo_id = @e[type=marker,tag=cl.r.torch,sort=nearest,limit=1] cl.slo_id

#Apply Effects
data merge entity @s {Fire:100}
execute as @s[type=creeper] run function classes:entities/vanilla/creeper/fire

execute if score @s cl.slo_id = @e[type=marker,tag=cl.r.torch,sort=nearest,limit=1] cl.slo_id run function classes:main/damage/damage with entity @e[type=marker,sort=nearest,limit=1] data
#execute if entity @s[type=#classes:magic/elemental/weakness/fire] run damage @s 6 minecraft:magic by @p
#execute unless entity @s[type=#classes:magic/elemental/weakness/fire] run damage @s 4 minecraft:magic by @p

# Particle effect
particle minecraft:small_flame ~ ~ ~ 0.5 0.5 0.5 0.01 30 normal

#Playsound
playsound minecraft:entity.blaze.burn player @a ~ ~ ~ 0.5 1.3
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 0.5 1
