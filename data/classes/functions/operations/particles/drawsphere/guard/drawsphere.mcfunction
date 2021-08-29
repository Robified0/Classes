execute as @s run function classes:operations/particles/drawsphere/guard/drawcircle
execute as @s[tag=ball1] at @s[tag=ball1] run tp @s ~ ~ ~ ~5 ~5
execute as @s[tag=ball2] at @s[tag=ball2] run tp @s ~ ~ ~ ~5 ~-5
tag @s[x_rotation=-90,tag=sphere] add ball1
tag @s[x_rotation=-90,tag=sphere] remove ball2
tag @s[x_rotation=90,tag=sphere] add ball2
tag @s[x_rotation=90,tag=sphere] remove ball1
