#Give ID of marker to avoid multiple hits
scoreboard players operation @s cl.slo_id = @e[type=marker,tag=cl.r.iceshard,sort=nearest,limit=1] cl.slo_id

# Apply Effects
data merge entity @s {Fire:-1}
effect give @s minecraft:slowness 5 1 false

# Handle elemental weaknesses
execute if entity @s[type=#classes:magic/elemental/weakness/water] run damage @s 5 minecraft:magic by @p
execute unless entity @s[type=#classes:magic/elemental/weakness/water] run damage @s 3 minecraft:magic by @p

# Play sound
playsound minecraft:block.glass.break player @a ~ ~ ~ 0.25 1.2
