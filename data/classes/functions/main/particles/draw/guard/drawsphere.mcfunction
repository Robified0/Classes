function classes:main/particles/draw/guard/drawcircle
execute if entity @s[tag=cl.t.ball1] at @s[tag=cl.t.ball1] run tp @s ~ ~ ~ ~5 ~5
execute if entity @s[tag=cl.t.ball2] at @s[tag=cl.t.ball2] run tp @s ~ ~ ~ ~5 ~-5
tag @s[x_rotation=-90,tag=cl.t.sphere] add cl.t.ball1
tag @s[x_rotation=-90,tag=cl.t.sphere] remove cl.t.ball2
execute at @s[x_rotation=-90,tag=cl.t.sphere] run playsound minecraft:block.amethyst_block.chime player @a ~ ~-1 ~ 2 1
tag @s[x_rotation=90,tag=cl.t.sphere] add cl.t.ball2
tag @s[x_rotation=90,tag=cl.t.sphere] remove cl.t.ball1
