#particle dust 1 1 1 1 ^ ^ ^3 0 0 0 0 1 force
particle end_rod ^ ^ ^3.5 0 0 0 0 1 force
tp @s ~ ~ ~ ~30 ~
execute unless entity @s[y_rotation=0..29] at @s run function classes:operations/particles/draw/guard/drawcircle
