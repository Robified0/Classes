function classes:operations/particles/draw/guard/drawcircle
execute if entity @s[tag=ball1] at @s[tag=ball1] run tp @s ~ ~ ~ ~5 ~5
execute if entity @s[tag=ball2] at @s[tag=ball2] run tp @s ~ ~ ~ ~5 ~-5
tag @s[x_rotation=-90,tag=sphere] add ball1
tag @s[x_rotation=-90,tag=sphere] remove ball2
execute at @s[x_rotation=-90,tag=sphere] run playsound minecraft:block.amethyst_block.chime player @a ~ ~-1 ~ 2 1
tag @s[x_rotation=90,tag=sphere] add ball2
tag @s[x_rotation=90,tag=sphere] remove ball1
